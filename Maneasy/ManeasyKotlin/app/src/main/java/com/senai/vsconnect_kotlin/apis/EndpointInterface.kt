package com.senai.vsconnect_kotlin.apis

import com.google.gson.JsonObject
import com.senai.vsconnect_kotlin.models.Login
import com.senai.vsconnect_kotlin.models.Servico
import com.senai.vsconnect_kotlin.models.Servico2
import okhttp3.MultipartBody
import retrofit2.Call
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.Multipart
import retrofit2.http.POST
import retrofit2.http.PUT
import retrofit2.http.Part
import retrofit2.http.Path
import java.util.UUID

interface EndpointInterface {
    @GET("servicos")
    fun listarServicos(): Call<List<Servico2>>

    @POST("login")
    fun login(@Body usuario: Login): Call<JsonObject>

    @GET("servicos/{idServico}")
    fun buscarServicoPorID(@Path(value = "idServico", encoded = true) idServico: UUID): Call<JsonObject>

    @Multipart
    @PUT("usuarios/editarImagem/{idUsuario}")
    fun editarImagemUsuario(
        @Part imagem: MultipartBody.Part,
        @Path(value = "idUsuario", encoded = true) idUsuario: UUID
    ) : Call<JsonObject>
}

