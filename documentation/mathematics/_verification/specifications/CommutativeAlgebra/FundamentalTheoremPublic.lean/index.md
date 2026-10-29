# Verification target: Fundamental Theorem Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377bb94c58397dc00f1ae086a43d8af3dfa22837",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377bb94c58397dc00f1ae086a43d8af3dfa22837`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [accumulate](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/accumulate.md) | 67 | `declaration-track:de6c17d965067febd79be1f1c2049d02f2e2e709a185d00fbddb6b27729f8f4c` |
| 2 | `def` | [invAccumulate](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/invaccumulate.md) | 73 | `declaration-track:bbaa0fad0b3cbeca816a790fd96c04ab95a75ff446edf0330261e95ec00992aa` |
| 3 | `lemma` | [accumulate_rec](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/accumulate-rec.md) | 76 | `result-track:9ed2ac3ff337d6366a93717a34543371ee1005d173ad5121764a263dc8dd1eb1` |
| 4 | `lemma` | [accumulate_last](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/accumulate-last.md) | 86 | `result-track:a8e966f91cd741cb7d8b82b8c22294539ceded8582f3dcdaeb100101e0f54462` |
| 5 | `lemma` | [accumulate_injective](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/accumulate-injective.md) | 96 | `result-track:fc7b4b9bd321c8a97b532c56e325ab0670e714077dba8524c5c5148791f65cb3` |
| 6 | `lemma` | [accumulate_invAccumulate](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/accumulate-invaccumulate.md) | 105 | `result-track:9089be7b6686b9c624824967c3df437bfef731f68bf7b34a738fb3ec29505c02` |
| 7 | `def` | [esymmAlgHom](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom.md) | 136 | `declaration-track:91e06b51a280d11496637e45149075d739cc3d400cc87350e5e4c633b8a7e67e` |
| 8 | `lemma` | [esymmAlgHom_apply](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-apply.md) | 140 | `result-track:0df91d9e4a3a1f658adb6a27c3e68e22f9e7a44c81205a2a9169abb9d3d5c689` |
| 9 | `lemma` | [rename_esymmAlgHom](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/rename-esymmalghom.md) | 144 | `result-track:1d922a55df3123b35498c79bb7b21a2ce4d9fc55711660fe1af41e0589e2afbb` |
| 10 | `def` | [esymmAlgHomMonomial](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghommonomial.md) | 152 | `declaration-track:21e4bc4d5c4a09f6ae4ebe432282f6d2cde948942f866f295c0b362b11a44906` |
| 11 | `lemma` | [isSymmetric_esymmAlgHomMonomial](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/issymmetric-esymmalghommonomial.md) | 157 | `result-track:9bef3290eccb737bd6923eeea15b2919f29da6838243b7ba27a77f3417d50cdc` |
| 12 | `lemma` | [esymmAlgHomMonomial_single](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghommonomial-single.md) | 160 | `result-track:9ca1f88c68bc57f9ded3c02cac92556d97fc66a7b60396b83696254c7fb3fca0` |
| 13 | `lemma` | [esymmAlgHomMonomial_single_one](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghommonomial-single-one.md) | 166 | `result-track:c9118089acdcac623a473a187dc116e9e7e894f17939565094efa6df38908caf` |
| 14 | `lemma` | [esymmAlgHomMonomial_add](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghommonomial-add.md) | 170 | `result-track:3053c7ac81a3625d13b34baf944280420f1df0f390617a8221fd468794070cee` |
| 15 | `lemma` | [esymmAlgHom_zero](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-zero.md) | 174 | `result-track:37b8fb3e63a79476da8b3bd5eb436174dc0b2c98a3f645115d12e1c9f95d1110` |
| 16 | `lemma` | [supDegree_monic_esymm](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/supdegree-monic-esymm.md) | 177 | `result-track:4cecb31faa622ca775fd483bbe0b586bfee520675413e8221d5d3926eb75fe39` |
| 17 | `lemma` | [supDegree_esymm](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/supdegree-esymm.md) | 202 | `result-track:e638bf3abeea309b085140b614c691851485c4163a7d6a90a2a737b07bba8d31` |
| 18 | `lemma` | [monic_esymm](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/monic-esymm.md) | 209 | `result-track:90a3c4d73d25e033f0a10ecf303692c1e43ced6ca86829be262b08590eb89011` |
| 19 | `lemma` | [leadingCoeff_esymmAlgHomMonomial](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/leadingcoeff-esymmalghommonomial.md) | 218 | `result-track:0e7ae9dd872300b464f03d8c3f588c57b98c1a5b2975884d3bad5e0744316b4a` |
| 20 | `lemma` | [supDegree_esymmAlgHomMonomial](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/supdegree-esymmalghommonomial.md) | 229 | `result-track:8dda825d3d6e3d7aa6093168044a44051cca1de2ba092d4340d3c18960785aca` |
| 21 | `lemma` | [IsSymmetric.antitone_supDegree](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/issymmetric-antitone-supdegree.md) | 246 | `result-track:c222b235f28b901e46053cf21a8bb3b944b21d03376282c365e7c62d23cd47a9` |
| 22 | `lemma` | [esymmAlgHom_fin_injective](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-fin-injective.md) | 272 | `result-track:4037bb4945cdf726bf4bcdcc41ed9212ecdde533002da802cd39ad8270db7f10` |
| 23 | `lemma` | [esymmAlgHom_injective](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-injective.md) | 288 | `result-track:30f3457f8c2afd1e18afea9ec4314e95cf12f9bd0551d9d800da163b973bbcdb` |
| 24 | `lemma` | [esymmAlgHom_fin_bijective](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-fin-bijective.md) | 293 | `result-track:f0be7e57aabaf1231aa2f333555a271de303b3a4d2bb577d74b188f36e3838cd` |
| 25 | `lemma` | [esymmAlgHom_fin_surjective](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-fin-surjective.md) | 317 | `result-track:0735371952dcfd3d48dea69b8de3607cb6a639d09ec4af63875216f742bd9af1` |
| 26 | `lemma` | [esymmAlgHom_surjective](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalghom-surjective.md) | 332 | `result-track:0c353d753e4630c854062f0ab4a30b8a8e445bb03a491d07b921b299d5aeb4a6` |
| 27 | `def` | [esymmAlgEquiv](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalgequiv.md) | 340 | `declaration-track:bdfa0e852fd40f8beca4dcc5d0baece17566ab8d6e9f67b6dd9853c1f3ab2b3d` |
| 28 | `lemma` | [esymmAlgEquiv_symm_apply](../../../../CommutativeAlgebra/FundamentalTheoremPublic.lean/declarations/esymmalgequiv-symm-apply.md) | 346 | `result-track:ada85cabc3f69f806f7b135328b4dbbc299b69cc067a1c24aae8c4b0966e1f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e1a8f10ce7f085b7d04b4477bd24c346014b7d0a61fb5898faa5443881f4134 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant674c9e0ed66c476e201539a0a9b2605cea0e6e89942460ab1c7984567aec85a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
