# Verification target: Kruskal Katona Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/KruskalKatonaPublic.lean/index.md) · [Full source](../../../../Combinatorics/KruskalKatonaPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8fe3293e6b636baf85a98304145dd1d087b0604`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean.json)

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
| 1 | `lemma` | [shadow_initSeg](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/shadow-initseg.md) | 58 | `result-track:954bbefafac8098d680723731f0278c6f4d13aa353015f06599ede0487512399` |
| 2 | `lemma` | [IsInitSeg.shadow](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/isinitseg-shadow.md) | 107 | `result-track:15b63ed7436300da9c5385258d6981519ceaaf2bc8c9563ecb89207a823d6f8f` |
| 3 | `lemma` | [toColex_compress_lt_toColex](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/tocolex-compress-lt-tocolex.md) | 131 | `result-track:8a39e5abfec3856ae9b694a17853ac7ccb5775c1dac97e670c5a58cefa427899` |
| 4 | `def` | [UsefulCompression](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/usefulcompression.md) | 143 | `declaration-track:0b73aa58bf282618138b8f77cf7d2b9a6afd26fa16b5ae0d2298f898005665c0` |
| 5 | `instance` | [UsefulCompression.instDecidableRel](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/usefulcompression-instdecidablerel.md) | 146 | `declaration-track:102441b5fffb4459314dcc6806a62140e770fcebeb2dcb86030bedde1e9d6a18` |
| 6 | `lemma` | [compression_improved](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/compression-improved.md) | 153 | `result-track:4179210f2d596842dbec6f1fe8962d42d03c29e917a94befd19f52ee1cfafd5a` |
| 7 | `lemma` | [isInitSeg_of_compressed](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/isinitseg-of-compressed.md) | 176 | `result-track:907149a4f114ae4a96f37f5ecadbe0ded2199853580ec23d7095a67fa36ca7f8` |
| 8 | `def` | [familyMeasure](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/familymeasure.md) | 203 | `declaration-track:338f04f26c56351546fc977ed07f08f4b8eab3a880475d8e654df7548eba8f49` |
| 9 | `lemma` | [familyMeasure_compression_lt_familyMeasure](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/familymeasure-compression-lt-familymeasure.md) | 207 | `result-track:1febdb000135e2ccea7f1afdea3b921d6773be9d46eb79ce749edd84a155a8dc` |
| 10 | `lemma` | [kruskal_katona_helper](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/kruskal-katona-helper.md) | 231 | `result-track:2e9c466506a508aa021b5916b29a9ed1d88ebff76395ce0cf204b8ae51618147` |
| 11 | `theorem` | [kruskal_katona](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/kruskal-katona.md) | 270 | `result-track:0645ea2a0f3b6b6787201464f980805ffbfac810047af794388f7ae9c1ee0a63` |
| 12 | `theorem` | [iterated_kk](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/iterated-kk.md) | 287 | `result-track:21ed0a4c09d5a6f4f4df5d59dee3e9babb6a3988bb829637f374a0c9c849d1d6` |
| 13 | `theorem` | [kruskal_katona_lovasz_form](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/kruskal-katona-lovasz-form.md) | 301 | `result-track:6e55756ad05269aa7e674b6ca00c197b802de6a57e661e89fff20b5485f5e989` |
| 14 | `theorem` | [erdos_ko_rado](../../../../Combinatorics/KruskalKatonaPublic.lean/declarations/erdos-ko-rado.md) | 347 | `result-track:44c56b6aa184e1392f5d83c85bac68a1634b7b403bbdcb5362e9486730b47cd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf3667e9a44f5463412134b704d5852d1a2b2c28ac817d604d413c5b88d59277 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
