// IMPORT DO CSS
import "./style.css";
// IMPORT DOS ICON
import { Icon } from '@iconify/react';
// IMPORT DOS COMPONENTES
import Menu from '../../components/Menu';
import Lista_consulta from "../../components/LinhaConsulta";
// IMPORT DAS IMAGENS
import bolinha_titulo from "../../assets/images/icone_titulo.svg";
import lupa from "../../assets/images/btn_pesquisar.svg";
// IMPORT REACT ROUTER DOM
import { Link } from "react-router-dom";
import { useState } from "react";

function Consultas() {

    // Dados fixos para simular a resposta da API
    const DadosLista = [
        {
            id: 1,
            nome_usuario: "João",
            nomeServicos: "Consulta 1",
            tipoServicos: "Projeto",
            statusServicos: "Concluído"
        },
        {
            id: 2,
            nome_usuario: "Maria",
            nomeServicos: "",
            tipoServicos: "",
            statusServicos: "Disponível"

        },
        {
            id: 3,
            nome_usuario: "Carlos",
            nomeServicos: "Consulta 2",
            tipoServicos: "Projeto",
            statusServicos: "Demanda"

        },
        {
            id: 4,
            nome_usuario: "Joana",
            nomeServicos: "Consulta 4",
            tipoServicos: "Projeto",
            statusServicos: "Chamado"

        },
        // Adicione mais dados conforme necessário
    ];

    // const listaProfissionaisDisponiveis = [
    //     {
    //         id: 2,
    //         usuario: { nome_usuario: "Maria" }
    //     },
    // Adicione mais dados conforme necessário
    // ];

    const [filtroStatus, setFiltroStatus] = useState('');
    const [filtroTermo, setFiltroTermo] = useState('');


    const getStatusClassName = (status: string) => {
        switch (status.toLowerCase()) {
            case 'projeto':
            return ''; 
          case 'concluído':
            return 'Concluído';
          case 'demanda':
            return 'Demanda';
          case 'chamado':
            return 'Chamado';
            case 'disponível':
                return 'Disponível';
          default:
            return '';
        }
      };

      const filtrarDados = () => {
        return DadosLista.filter(item =>
            filtroStatus.toLowerCase() === 'projeto' || item.statusServicos.toLowerCase().includes(filtroStatus.toLowerCase()) &&
          (item.nome_usuario.toLowerCase().includes(filtroTermo.toLowerCase()))
        );
      };

      const dadosFiltrados = filtrarDados();
    return (
        <main id="consulta" className="container_consulta">
            <Menu></Menu>
            <section className="section_pesquisa">
                <div className="container">
                    <div className="conteudo">
                        <div className="section_titulo">
                            <img src={bolinha_titulo} alt="" />
                            <h1>Consultas</h1>
                        </div>

                        <div className="pesquisa_and_filtro">

                            <div className="section_ID_Consultar">
                                <div className="input_nome">
                                    <label htmlFor="Pesquisa">Pesquisa</label>
                                    <div className="input-icons">
                                        <input name="Pesquisa" className="input-field" type="text" placeholder="Digite o nome do chamado ou ID" required
                                        value={filtroTermo}
                                        onChange={(e) => setFiltroTermo(e.target.value)} />
                                    </div>
                                </div>
                                <Link to={"#"} className="section_pesquisa_btn">
                                    <img src={lupa} alt="" />
                                </Link>
                            </div>

                            <div className="pesquisa_tipo select-wrapper">
                                <label htmlFor="filtro" className="filtro">Tipo</label>
                                <select name="Pesquisa"value={filtroStatus}
                                    onChange={(e) => setFiltroStatus(e.target.value)}
                                >   
                                    <option value="projeto" className="input-field">Projeto</option>
                                    <option value="concluído" className="input-field">Concluído</option>
                                    <option value="demanda" className="input-field">Demanda</option>
                                    <option value="chamado" className="input-field" >Chamado</option>
                                    <option value="disponível" className="input-field">Disponível</option>
                                </select>
                            </div>

                        </div>

                        <section className="section_table ">
                            <h2>Consultas</h2>

                            <div className="tabela_scroll">
                                <table>
                                    <thead>
                                        <tr className="linha_titulo">
                                            <th className="  linha_consultas_nome_profissional">Profissional</th>
                                            <th className=" linha_consultas_nome_projeto">Serviço</th>
                                            <th className=" linha_consultas_tipo">Tipo</th>
                                            <th className="linha_consultas_status ">Status</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        {
                                            dadosFiltrados.map((consulta) => (
                                                <tr key={consulta.id}>
                                                    <Lista_consulta
                                                        nome_profissional={consulta.nome_usuario}
                                                        nome_projeto={consulta.nomeServicos}
                                                        tipo={consulta.tipoServicos}
                                                        status={consulta.statusServicos}
                                                    />
                                                </tr>
                                            ))
                                        }
                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </main>
    );
}

export default Consultas;
