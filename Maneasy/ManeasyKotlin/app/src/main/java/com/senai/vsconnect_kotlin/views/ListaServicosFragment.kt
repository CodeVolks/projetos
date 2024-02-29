package com.senai.vsconnect_kotlin.views

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.senai.vsconnect_kotlin.LoginActivity
import com.senai.vsconnect_kotlin.R
import com.senai.vsconnect_kotlin.adapters.ListaServico2Adapter
import com.senai.vsconnect_kotlin.adapters.ListaServicoAdapter
import com.senai.vsconnect_kotlin.apis.EndpointInterface
import com.senai.vsconnect_kotlin.apis.RetrofitConfig
import com.senai.vsconnect_kotlin.databinding.FragmentListaServicosBinding
import com.senai.vsconnect_kotlin.models.Servico
import com.senai.vsconnect_kotlin.models.Servico2
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class ListaServicosFragment : Fragment(), ListaServico2Adapter.OnItemClickListener {

    private val clienteRetrofit = RetrofitConfig.obterInstanciaRetrofit()

    private val endpoints = clienteRetrofit.create(EndpointInterface::class.java)

    private var _binding: FragmentListaServicosBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {

        _binding = FragmentListaServicosBinding.inflate(inflater, container, false)

        val root: View = binding.root

        // organiza os itens da Recycler em ordem vertical, sendo um debaixo do outro
        binding.recyclerServicos.layoutManager = LinearLayoutManager(requireContext())

        endpoints.listarServicos().enqueue(object : Callback<List<Servico2>> {
            override fun onResponse(call: Call<List<Servico2>>, response: Response<List<Servico2>>) {
                val servicos = response.body()

                binding.recyclerServicos.adapter = servicos?.let { ListaServico2Adapter(requireContext(), it, this@ListaServicosFragment) }
            }

            override fun onFailure(call: Call<List<Servico2>>, t: Throwable) {
                println("Falha na requisição: ${t.message}")
            }

        })

        return root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    override fun OnItemClick(servico: Servico2) {
        val sharedPreferences = requireContext().getSharedPreferences("idServico", Context.MODE_PRIVATE)

        val editor = sharedPreferences.edit()

        editor.putString("idServico", servico.id.toString())

        editor.apply()

        findNavController().navigate(R.id.nav_detalhes_servico)
    }
}