package com.senai.vsconnect_kotlin.views

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.fragment.app.Fragment
import com.senai.vsconnect_kotlin.R
import com.senai.vsconnect_kotlin.apis.EndpointInterface
import com.senai.vsconnect_kotlin.apis.RetrofitConfig
import com.senai.vsconnect_kotlin.databinding.FragmentEditarImagemBinding
import com.senai.vsconnect_kotlin.databinding.FragmentListaServicosBinding

class ListaServicosFragment : Fragment() {

        private var _binding: FragmentListaServicosBinding? = null
        private val binding get() = _binding!!

        private val clienteRetrofit = RetrofitConfig.obterInstanciaRetrofit()

        private val endpoints = clienteRetrofit.create(EndpointInterface::class.java)

        private fun setContentView(activityMain: Int) {

        }

        override fun onCreateView(
            inflater: LayoutInflater,
            container: ViewGroup?,
            savedInstanceState: Bundle?
        ): View {

            _binding = FragmentListaServicosBinding.inflate(inflater, container, false)

            val root: View = binding.root

            super.onCreate(savedInstanceState)
            setContentView(R.layout.fragment_lista_servicos)

            val webView: WebView = root.findViewById(R.id.webHome)
            webView.settings.javaScriptEnabled = true

            // Carrega o link do Power BI no WebView
            val powerBiLink = "https://youtu.be/p3j_4-WA8FQ?si=uZT-Vu17qSsKYFwW"
            webView.loadUrl(powerBiLink)

            val webView2: WebView = root.findViewById(R.id.webHome2)
            webView2.settings.javaScriptEnabled = true


            // Carrega o link do Power BI no WebView
            val powerBiLink2 = "https://sebrae.com.br/sites/PortalSebrae/como-funciona-a-comercializacao-de-credito-de-carbono,88dbbc6d15757810VgnVCM1000001b00320aRCRD"
            webView2.loadUrl(powerBiLink2)

            val webView3: WebView = root.findViewById(R.id.webHome3)
            webView3.settings.javaScriptEnabled = true

            // Carrega o link do Power BI no WebView
            val powerBiLink3 = "https://www.sp.senai.br/noticia/senai-sp-e-fundacao-grupo-vw-lancam-code-school-curso-voltado-para-programacao-e-desenvolvimento"
            webView3.loadUrl(powerBiLink3)

            // Carrega o link do Power BI no WebView

            val webView4: WebView = root.findViewById(R.id.webHome1)
            webView4.settings.javaScriptEnabled = true

            val instaHome = "https://www.instagram.com/explore/tags/cr%C3%A9ditodecarbono/"
            webView4.loadUrl(instaHome)



            // Configura um WebViewClient para navegação dentro do WebView
            webView.webViewClient = object : WebViewClient() {
                override fun shouldOverrideUrlLoading(view: WebView?, url: String?): Boolean {
                    view?.loadUrl(url.toString())
                    return true
                }
            }


            return root
        }


        override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
            super.onActivityResult(requestCode, resultCode, data)

        }
    }

class FragmentListaServicosBinding {

}
