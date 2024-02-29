package com.senai.vsconnect_kotlin.models


import java.util.*

class ServicoDetalhes (
    val id: UUID,
    val tipoServicos: Boolean,
    val nomeServico: String,
    val statusServicos: String,
    val dataInicio: Date,
    val dataTermino: Date,
    val descricaoServicos: String
)