package com.securepass.apisecurepass.azure;

import com.microsoft.azure.storage.CloudStorageAccount;
import com.microsoft.azure.storage.blob.CloudBlobClient;
import com.microsoft.azure.storage.blob.CloudBlobContainer;
import com.microsoft.azure.storage.blob.CloudBlockBlob;
import com.microsoft.azure.storage.blob.ListBlobItem;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.FileInputStream;

@Service
public class Blob {

    public static final String storageConnectionString = "Conexao do azure";


    // Criando função para enviar arquivo
    public static String UploadFileToBlob(MultipartFile arquivo, String nomeArquivo) {
        try {
            // Acessando os recursos da conta por meio da connection string
            CloudStorageAccount storageAccount = CloudStorageAccount.parse(storageConnectionString);

            // Acessando os dados de conexao com o blob
            CloudBlobClient blobClient = storageAccount.createCloudBlobClient();

            // Reconhecendo o container criado
            CloudBlobContainer container = blobClient.getContainerReference("Container do azure");

            // Criando uma referencia do novo arquivo que será gerado
            CloudBlockBlob blob = container.getBlockBlobReference(nomeArquivo);

            blob.upload(arquivo.getInputStream(), arquivo.getSize());

            return blob.getUri().toString();


        } catch (Exception e) {
            // Output the stack trace.
            e.printStackTrace();
        }

        return null;
    }

    public static Boolean UpdateFileToBlob(MultipartFile novoArquivo, String idUsuario){
        try{
            // Acessando os recursos da conta por meio da connection string
            CloudStorageAccount storageAccount = CloudStorageAccount.parse(storageConnectionString);

            // Acessando os dados de conexao com o blob
            CloudBlobClient blobClient = storageAccount.createCloudBlobClient();

            CloudBlobContainer container = blobClient.getContainerReference("Container do azure");

            // Procurando o arquivo original para alteracao
            for (ListBlobItem blobItem : container.listBlobs()){

                String[] path = blobItem.getUri().getPath().split("/");
                String nomeCompletoBlob = path[path.length - 1];
                String nomeBlob = nomeCompletoBlob.substring(0, nomeCompletoBlob.lastIndexOf('.'));

                // Verificando se o arquivo é igual
                if ( nomeBlob.equals( idUsuario )){

                    // Criando uma referencia do novo arquivo que será gerado
                    CloudBlockBlob blob = container.getBlockBlobReference( nomeCompletoBlob );
                    blob.upload( novoArquivo.getInputStream(), novoArquivo.getSize() );

                    return true;
                }

            }


        } catch (Exception e) {
            // Output the stack trace.
            e.printStackTrace();
        }

        return false;
    }
}

