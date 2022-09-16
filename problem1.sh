head -n 4 multi_seq.fa > seq1.fa
head -n 8 multi_seq.fa | tail -n 4 > seq2.fa
head -n 12 multi_seq.fa | tail -n 4 > seq3.fa
head -n 16 multi_seq.fa | tail -n 4 > seq4.fa


grep -v ">" seq1.fa | grep -o "[CG]" | wc -l | tr "\n" " " > mseq_GC.txt
echo seq1.fa >> mseq_GC.txt
grep -v ">" seq2.fa | grep -o "[CG]" | wc -l | tr "\n" " " >> mseq_GC.txt
echo seq2.fa >> mseq_GC.txt
grep -v ">" seq3.fa | grep -o "[CG]" | wc -l | tr "\n" " " >> mseq_GC.txt
echo seq3.fa >> mseq_GC.txt
grep -v ">" seq4.fa | grep -o "[CG]" | wc -l | tr "\n" " " >> mseq_GC.txt
echo seq4.fa >> mseq_GC.txt
