package com.senai.vsconnect_kotlin.views

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import androidx.fragment.app.Fragment
import com.google.gson.JsonObject
import com.senai.vsconnect_kotlin.R
import com.senai.vsconnect_kotlin.apis.EndpointInterface
import com.senai.vsconnect_kotlin.apis.RetrofitConfig
import com.senai.vsconnect_kotlin.databinding.FragmentDetalhesServicoBinding
import com.squareup.picasso.Picasso
import org.json.JSONObject
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import java.util.*

class DetalhesServicoFragment : Fragment() {

    private var _binding: FragmentDetalhesServicoBinding? = null

    private val binding get() = _binding!!

    private val clienteRetrofit = RetrofitConfig.obterInstanciaRetrofit()

    private val endpoints = clienteRetrofit.create(EndpointInterface::class.java)

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {


        _binding = FragmentDetalhesServicoBinding.inflate(inflater, container, false)

        val root: View = binding.root

        val sharedPreferences =  requireContext().getSharedPreferences("idServico", Context.MODE_PRIVATE)
        val idServico = sharedPreferences.getString("idServico", "")

        buscarServicoPorID(idServico.toString())

        return root

    }

    private fun buscarServicoPorID(idServico: String) {
        endpoints.buscarServicoPorID(UUID.fromString(idServico)).enqueue(object : Callback<JsonObject> {
            override fun onResponse(call: Call<JsonObject>, response: Response<JsonObject>) {

                val servico = JSONObject(response.body().toString())

                binding.idServicos.text = servico.getString("id")
                binding.nomeServicos.text = servico.getString("nomeServicos")
                binding.tipoServicos3.text = servico.getString("tipoServicos")
                binding.statusServicos.text = servico.getString("statusServicos")
                binding.dataInicio.text = servico.getString("dataInicio")
                binding.dataInicio2.text = servico.getString("dataTermino")
                binding.descricao.text = servico.getString( "descricaoServicos")

            }

            override fun onFailure(call: Call<JsonObject>, t: Throwable) {
                TODO("Not yet implemented")
            }

        })
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}