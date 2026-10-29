# Verification target: Dyadic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b632d067c4d693109b3fb70cf42ecc67456d8fbd",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variantb66794b78bbbcacbf8b4d2b0b17570ca88484d7c5f1e939a1710bead5a7b7b8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b632d067c4d693109b3fb70cf42ecc67456d8fbd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variantb66794b78bbbcacbf8b4d2b0b17570ca88484d7c5f1e939a1710bead5a7b7b8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variantb66794b78bbbcacbf8b4d2b0b17570ca88484d7c5f1e939a1710bead5a7b7b8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 28 | `declaration-track:3cba56a26f810b35f7b4a12f9d9d01aaa29ce282848dc3abd4c81b2de349315a` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/instance.md) | 36 | `declaration-track:0ca28d0026adbad13448418962c749168bacaa9643671eefe8d0504eb3868d2f` |
| 3 | `def` | [step](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/step.md) | 54 | `declaration-track:b9856a6b8435176488eb541af9ad4ee36db5f7abf4932c6b9a9320b0ef492fce` |
| 4 | `theorem` | [ofIntWithPrec_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/ofintwithprec-one.md) | 56 | `result-track:a6e3c7c05389ca382868e792341f018cd2ce9c794aec56a894d40ecc8f45524c` |
| 5 | `def` | [toReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal.md) | 62 | `declaration-track:c705e21ebd8c764522ae59dea3b28592d9aad18e70d8fbd98249cedc4d1cdf1b` |
| 6 | `lemma` | [toReal_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-natcast.md) | 65 | `result-track:931cdd0bd154d62e806637bc687575f909957ae6eb22dd547cd72e8119613a38` |
| 7 | `lemma` | [toReal_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-ofnat.md) | 68 | `result-track:a6edd45f340fc30df5726cabbbfe84dc7bb60c3fa5e1d5e05f2fc8426ba09a8d` |
| 8 | `lemma` | [toReal_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-intcast.md) | 74 | `result-track:8c4a7db123eff604c7b8cbfac415c3eb121648ce36d53cb34c5e94aecfdea1d8` |
| 9 | `lemma` | [toReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-add.md) | 77 | `result-track:71ac0ff96e9135d58428f5ad7db87aca5471349b48d22b307ca52e33c93ac0c0` |
| 10 | `lemma` | [toReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-mul.md) | 80 | `result-track:abac344ca952dc847d15e6410529208fa8b32373279ba322f82f999836e6156d` |
| 11 | `lemma` | [toReal_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-pow.md) | 83 | `result-track:b8ac66ae98d69ee6c7cc507abe1483b14e889990c667dcab1c63255c53bfcfe4` |
| 12 | `def` | [toRealAddMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/torealaddmonoidhom.md) | 87 | `declaration-track:b58c07eddf3d98094271913cad6f64af86b4ea86ce1ebc4953f660d0817c6806` |
| 13 | `lemma` | [toReal_le_toReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-le-toreal.md) | 93 | `result-track:5c57fe38e230b4793014be7254741e52988bb6c142a745c6dab18324b90795a3` |
| 14 | `lemma` | [toReal_lt_toReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/toreal-lt-toreal.md) | 96 | `result-track:208921c674bd9397ca652f9345d42267fc006565519375224d8b774d8ba7f0d4` |
| 15 | `def` | [toRealOrderEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicNamespacedPublic.lean/declarations/torealorderembedding.md) | 99 | `declaration-track:94028bca6281134a3e850ec0288cdbfc2ec1ca906063a85a4c3d490224ecf230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0efa153499c5196d8b449762ebde77694490bf48de57d1cc1f02c654c0ec624d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variantb66794b78bbbcacbf8b4d2b0b17570ca88484d7c5f1e939a1710bead5a7b7b8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variantb66794b78bbbcacbf8b4d2b0b17570ca88484d7c5f1e939a1710bead5a7b7b8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
