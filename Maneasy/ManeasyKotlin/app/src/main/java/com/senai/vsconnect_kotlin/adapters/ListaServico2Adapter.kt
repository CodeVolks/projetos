package com.senai.vsconnect_kotlin.adapters

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.AdapterView.OnItemClickListener
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.senai.vsconnect_kotlin.R
import com.senai.vsconnect_kotlin.models.Servico2
import java.util.UUID

class ListaServico2Adapter(
    private val context: Context,
    private val listaServicos: List<Servico2>,
    private val itemClickListener: OnItemClickListener
) : RecyclerView.Adapter<ListaServico2Adapter.ViewHolder>() {

    interface OnItemClickListener {
        fun OnItemClick(servico: Servico2)
    }

    class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {

        //Essa função é responsável por chamar e atribuir valores para as views do item da RecyclerView
        fun vincularDadosNoItem(servico: Servico2) {
            val tipoServico = itemView.findViewById<TextView>(R.id.tipo_servicos)
            tipoServico.text = if (servico.tipoServicos) "Projeto" else "Demanda"

            val idServico = itemView.findViewById<TextView>(R.id.id_servicos)
            idServico.text = servico.id.toString()

            val statusServico = itemView.findViewById<TextView>(R.id.status_servicos)
            statusServico.text = servico.statusServicos

            val descricaoServico = itemView.findViewById<TextView>(R.id.descricao_servicos)
            descricaoServico.text = servico.descricaoServicos
        }

    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ListaServico2Adapter.ViewHolder {
        val inflater = LayoutInflater.from(context);

        val view = inflater.inflate(R.layout.fragment_servico, parent, false)

        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ListaServico2Adapter.ViewHolder, position: Int) {
        val itemServico = listaServicos[position]

        val cardServico = holder.itemView.findViewById<LinearLayout>(R.id.cardServico)
        cardServico.setOnClickListener {
            itemClickListener.OnItemClick(itemServico)
        }

        holder.vincularDadosNoItem(itemServico)
    }

    override fun getItemCount(): Int {
        return listaServicos.size
    }
}