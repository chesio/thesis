Streamed Phrase Table Extraction
================================

The aim of this work is to examine the applicability of an algorithm for
approximate frequency counting to act as an on-the-fly filter in the process of phrase
table extraction in Statistical Machine Translation systems. Its implementation allows
for the bulk of extracted phrase pairs to be much reduced with no significant loss to
the ultimate quality of the phrase-based translation model as measured by the
state-of-the-art evaluation measure BLEU. The result of this implementation is a fully
working program, called eppex, capable of acting as an alternative to the existing tools
for phrase table creation and filtration that are part of the open-source SMT system
Moses. A substantial part of this work is devoted to the benchmarking of both the runtime
performance and the quality of produced phrase tables achieved by the program
when confronted with parallel training data comprised of 2 billions of words.

