

package entidade;

/**
 *
 * @author User
 */
public class User {
    private int id;
    private String nome;
    private String cpf;
    private String endereco;
    private String senha;
    
    public User() {
    }
    
    public User (int id, String nome, String cpf, String endereco, String senha){
        this.id=id;
        this.nome=nome;
        this.cpf=cpf;
        this.endereco=endereco;
        this.senha=senha;
        
    }

    
        public void setId(int id) {
        this.id = id;
    }
        public void setNome(String nome) {
        this.nome = nome;
    }
        public void setCpf(String cpf) {
        this.cpf = cpf;
    }
        public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
        public void setSenha(String senha) {
        this.senha = senha;
    }
        
        public int getId() {
        return id;
    }    
        public String getNome() {
        return nome;
    }
        
        public String getCpf() {
        return cpf;
    }

        public String getEndereco() {
        return endereco;
    }
        public String getSenha() {
        return senha;
    }
}
