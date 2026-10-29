# Verification target: Dyadic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24f2133e085575bff17f2f35ec7918a93219ac85",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variant2e1db20e6381930902f4098db680f9760f890015e7719c61a208a9f1731f052f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24f2133e085575bff17f2f35ec7918a93219ac85`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variant2e1db20e6381930902f4098db680f9760f890015e7719c61a208a9f1731f052f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variant2e1db20e6381930902f4098db680f9760f890015e7719c61a208a9f1731f052f.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/instance.md) | 20 | `declaration-track:37eb0f76ff741dbb91092aa0e95611c669bde9e5de70a5204e03118d33bf95ad` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/instance-source-edition-2.md) | 28 | `declaration-track:5dafa9705be13fe3c0d1b34b7294ccabdae031f05c410969425928c73f068a69` |
| 3 | `def` | [step](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/step.md) | 46 | `declaration-track:884aa2711afe8818f743784b27a6042e01f60b5bcb7b4c9ac1cfe25957044f20` |
| 4 | `theorem` | [ofIntWithPrec_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/ofintwithprec-one.md) | 48 | `result-track:eec2c1f4474335fd7cfaa62dc650b0b362cd452f69c04a490fd8c75bf2983c5c` |
| 5 | `def` | [toReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal.md) | 54 | `declaration-track:067c6f81ef71f69587eeabc4832199d07d990a8a052da5cfe2ce87558e998a26` |
| 6 | `lemma` | [toReal_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-natcast.md) | 57 | `result-track:9acef0fcef80eef4cac55d0c2a803e795e79195eeaa85edfaa3b7a0309a2ac5a` |
| 7 | `lemma` | [toReal_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-ofnat.md) | 60 | `result-track:7510ddd4d102f39a538f96a29c07c87eb5727798120ec6b48d34d06e27be2533` |
| 8 | `lemma` | [toReal_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-intcast.md) | 66 | `result-track:6a36fbf72d56b7d358ab1f4d921774350bcb78136bbcc6a8ff39bbf16be2a6d6` |
| 9 | `lemma` | [toReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-add.md) | 69 | `result-track:6a16ed1e840e5e936d384aa48d70cbf2f5510807f29dfa9f9483564b31cf9de3` |
| 10 | `lemma` | [toReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-mul.md) | 72 | `result-track:0a5d8b32ce3558f396106693ec77300c17b4af6c3754dac58c6a48a63049627c` |
| 11 | `lemma` | [toReal_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-pow.md) | 75 | `result-track:d381f88fdbfde320de457047287943d2cefa56d31ed00870b9ef5eb57f00622c` |
| 12 | `def` | [toRealAddMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/torealaddmonoidhom.md) | 79 | `declaration-track:b107bc8f08fb76f76e2a19984c4dccb0f79c4f5e0fd82def968d3388c8e06be1` |
| 13 | `lemma` | [toReal_le_toReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-le-toreal.md) | 85 | `result-track:8ed32a19521b8140503bde6405b7653f3be8c1b3104f35aa303f67515b57d4cf` |
| 14 | `lemma` | [toReal_lt_toReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/toreal-lt-toreal.md) | 88 | `result-track:3d08d140e6b58f6abe6d7f2ca3713eefee0260c307ed3373e9c52d95fafedb39` |
| 15 | `def` | [toRealOrderEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/DyadicPublic.lean/declarations/torealorderembedding.md) | 91 | `declaration-track:b1b96f5df4e53135060a6917bf9c0abef8414231cd9d5a587a962e79919bca2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=067edee10dff5771008b93adaf0a67270ee10bc1aab6b09bb7f74c8ee9e10460 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variant2e1db20e6381930902f4098db680f9760f890015e7719c61a208a9f1731f052f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dyadic/Variant2e1db20e6381930902f4098db680f9760f890015e7719c61a208a9f1731f052f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
