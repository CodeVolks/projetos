package com.senai.vsconnect_kotlin.models

import java.util.UUID

class Servico (
    val idServico: UUID,
    val tipoServico: Servico,
    val statusServico: Servico,
    //val titulo: String,
    val descricao: String,
    //val proposta: String
)