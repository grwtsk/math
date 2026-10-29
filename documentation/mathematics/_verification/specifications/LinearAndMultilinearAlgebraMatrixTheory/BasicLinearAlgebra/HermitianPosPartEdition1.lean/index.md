# Verification target: Hermitian Pos Part Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbd2f1cf33c599984ca27e5c0072000ca51319b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbd2f1cf33c599984ca27e5c0072000ca51319b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [specMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap.md) | 42 | `declaration-track:788b263d3100fa009bed2301af6985998133d96030722ea520420b9dc548ba2f` |
| 2 | `lemma` | [specMap_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap-ishermitian.md) | 46 | `result-track:7454f81b497012166f5fa4f1cba7b80641efa4ed310c4bfe02810e8ca2749c47` |
| 3 | `lemma` | [specMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap-id.md) | 53 | `result-track:bca2e8b73aea6a1447e46109cd4a9bd13d93acd38d4257847d86ccef2d025e87` |
| 4 | `lemma` | [specMap_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap-sub.md) | 58 | `result-track:3fc6f16ed11061c71bdb4460d5d984dbd9941b7ef54eb7559d719cbf90313d94` |
| 5 | `lemma` | [specMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap-mul.md) | 65 | `result-track:18f991fb8e8a6837c52ac54c143e24654cbc49c69609ce3067a451df02cf4e95` |
| 6 | `lemma` | [specMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap-zero.md) | 71 | `result-track:325c4ac67f8240d3f862cccca37ba6419a850c01efb32881df9ae7bc6ecfb6f3` |
| 7 | `lemma` | [hermForm_specMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermform-specmap.md) | 77 | `result-track:dbb6dbc0b46c84f845f4e0881760107f199fb1adc2b9d67de88b2fa9742c8960` |
| 8 | `lemma` | [rtrace_specMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/rtrace-specmap.md) | 101 | `result-track:ace975b3627838447a7d2856aa76d5ead3effee490636c357a42f7ecc1db469a` |
| 9 | `lemma` | [frobSq_specMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/frobsq-specmap.md) | 109 | `result-track:2fedaf38550b24ed9bdd2b7ed4dfabc9b41c5c916396709e223f8cdf85e7a265` |
| 10 | `lemma` | [rank_specMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/rank-specmap.md) | 118 | `result-track:9799e1c502744a7f1a07870834227531a9d24d31d247dfc4079b65d421142f4a` |
| 11 | `lemma` | [specMap_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/specmap-possemidef.md) | 134 | `result-track:cae9bf23c16a2df5fccdd84ef88862f4790ec7082689aaf0be6a20a9946e308c` |
| 12 | `def` | [hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermpospart.md) | 148 | `declaration-track:f9eed12344d22346934a597652bfdb8a7590eee34ad5ceffcef458a34aed516a` |
| 13 | `def` | [hermNegPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermnegpart.md) | 151 | `declaration-track:80160d09ee43f744085ebf30e36147b49f20d55e6db61d523eb540ef87730084` |
| 14 | `lemma` | [hermPosPart_sub_hermNegPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermpospart-sub-hermnegpart.md) | 153 | `result-track:68a15d5a90ac59e49be9b0efafba47b5ad875e6e15b7c608df5bf6a788d6d555` |
| 15 | `lemma` | [hermPosPart_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermpospart-possemidef.md) | 158 | `result-track:9c1ce4fac71e87fc9f1a9ea6d3cb675ee91266394b835e850cda169d541c2785` |
| 16 | `lemma` | [hermNegPart_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermnegpart-possemidef.md) | 161 | `result-track:9e44da6886bf979c6d1a511c77c89e19907833376d321e9fbbfae3da6a0a62f0` |
| 17 | `lemma` | [real_posPart_mul_negPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/real-pospart-mul-negpart.md) | 164 | `result-track:b8ae26cf0644b0a47b9f03566c85f7aefac233a0f6486daddf33d0cebf0552e4` |
| 18 | `lemma` | [hermPosPart_mul_hermNegPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermpospart-mul-hermnegpart.md) | 169 | `result-track:a45906b8e7bdf7492275bbda80cb4cb714e96b70f451aa9f7c181ac975f607ba` |
| 19 | `lemma` | [hermNegPart_mul_hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/hermnegpart-mul-hermpospart.md) | 174 | `result-track:6a72e7db53d2beedecfffb2ef7bf1d4e94c4545cbb856ad81e3ff941b2cdeedb` |
| 20 | `lemma` | [rank_hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/rank-hermpospart.md) | 180 | `result-track:32dde1da490c4eca75f7db9f293fc348658913a0f578f5a5ffcad6dd5468d5c3` |
| 21 | `lemma` | [rtrace_hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/rtrace-hermpospart.md) | 186 | `result-track:6fdff02697fc14cb1ac6f1bc4eb4407d20a681d977e7c2e6c3f698570cb03ea8` |
| 22 | `lemma` | [rtrace_hermNegPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/rtrace-hermnegpart.md) | 189 | `result-track:26bb0d14bdd8776a6f11818fcb6fb2824c85fdbd6bd8eef1bfdf3408921b084d` |
| 23 | `lemma` | [rtrace_sub_decomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/rtrace-sub-decomp.md) | 192 | `result-track:85541531f6ae1cb3e9da2023bc8ce7f79a872cf3a81aeebf7ac7be5b04a192bb` |
| 24 | `lemma` | [frobSq_hermPosPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/frobsq-hermpospart.md) | 196 | `result-track:8e7f80d117e5285bf1382191643f97477643a951f1cb7c63c480d133e6b04235` |
| 25 | `lemma` | [frobSq_hermNegPart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPosPartEdition1.lean/declarations/frobsq-hermnegpart.md) | 199 | `result-track:ac500b98726eaf9a85f61af78d9bb7f76ca794e10ffc5616c00c95f2aa6b0f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5033c699fe44f41559408f10644cc917125a020a7c31cde8c94596dd3e67be74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
