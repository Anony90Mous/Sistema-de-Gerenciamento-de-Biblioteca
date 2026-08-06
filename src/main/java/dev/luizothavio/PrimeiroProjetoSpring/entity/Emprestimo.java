package dev.luizothavio.PrimeiroProjetoSpring.entity;

import dev.luizothavio.PrimeiroProjetoSpring.enums.StatusEmprestimo;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "emprestimos")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Emprestimo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario usuario;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "livro_id", nullable = false)
    private Livro livro;

    @CreationTimestamp
    @Column(name = "data_emprestimo", updatable = false)
    private LocalDateTime dataEmprestimo;

    @Column(name = "data_devolucao")
    private LocalDateTime dataDevolucao;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private StatusEmprestimo status;

    @CreationTimestamp
    @Column(name = "criado_em", updatable = false)
    private LocalDateTime criadoEm;

    @UpdateTimestamp
    @Column(name = "atualizado_em")
    private LocalDateTime atualizadoEm;
}
