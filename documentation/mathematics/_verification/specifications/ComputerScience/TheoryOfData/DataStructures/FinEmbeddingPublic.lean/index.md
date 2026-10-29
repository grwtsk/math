# Verification target: Fin Embedding Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63eeb4bd075fb685bb655a06874251069f05a906",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variantbc2db073aaba9c6026c4bcd7213a1c7f9b05cc28b87a7e7f4006096d4fc383d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63eeb4bd075fb685bb655a06874251069f05a906`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variantbc2db073aaba9c6026c4bcd7213a1c7f9b05cc28b87a7e7f4006096d4fc383d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variantbc2db073aaba9c6026c4bcd7213a1c7f9b05cc28b87a7e7f4006096d4fc383d0.lean.json)

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
| 1 | `def` | [valEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/valembedding.md) | 48 | `declaration-track:ad42552a733c38863c43145fc7fe03780251dfc1e94f8f01f32eea94d3c3d37b` |
| 2 | `theorem` | [equivSubtype_symm_trans_valEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/equivsubtype-symm-trans-valembedding.md) | 52 | `result-track:466b284dc7c8984c995219e3c8d67868eebddc10ae9238a11f889d25c68c33e0` |
| 3 | `def` | [succEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/succemb.md) | 65 | `declaration-track:7fe244140754e7d29a6d39af6069117259a9f954278ba3823d77486c8be595e5` |
| 4 | `theorem` | [coe_succEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/coe-succemb.md) | 70 | `result-track:326f721f2651cef340406b2bd89aa2e493b4a85ff4805b1067f877dedb6fb4b9` |
| 5 | `def` | [castLEEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/castleemb.md) | 77 | `declaration-track:55247fade31fcfa2440e8bb7fca8d44985b130ed08717b7a72fdd75b18c85313` |
| 6 | `lemma` | [coe_castLEEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/coe-castleemb.md) | 81 | `result-track:43209bba0b145527168c4ce6e636464049300c7492575ba6fca76fe45ad563ce` |
| 7 | `lemma` | [nonempty_embedding_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/nonempty-embedding-iff.md) | 86 | `result-track:869146f3bae8b580153e5748bc06eb9e57fd8c8408cf2d393bb57d7cfd3b86e0` |
| 8 | `lemma` | [equiv_iff_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/equiv-iff-eq.md) | 99 | `result-track:bc1f409d0d3d7d183f4c0d84a585d35c58fc4673bca55758d44e5148c6da1fff` |
| 9 | `def` | [castAddEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/castaddemb.md) | 105 | `declaration-track:8d063b3cbd90461ca1cf04431a215f8fb26aed9a0adf2551bfa8748f6087ce34` |
| 10 | `lemma` | [coe_castAddEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/coe-castaddemb.md) | 108 | `result-track:bb7a64ea3e66f430a0c8525f974ed2cad638362e0c933a487252809a05f44d54` |
| 11 | `lemma` | [castAddEmb_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/castaddemb-apply.md) | 110 | `result-track:0509b4217fc7d5612772ab94be2763e4ba5cc8c68f079a715d79975e86b7edaf` |
| 12 | `def` | [castSuccEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/castsuccemb.md) | 113 | `declaration-track:dccd4899d20dad70d213597b13fa27b772ce4b081bdeec463240c1a7e24d22df` |
| 13 | `lemma` | [coe_castSuccEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/coe-castsuccemb.md) | 115 | `result-track:911664208e6e91506d2f12290038ad6c0945aaf1359e000707cf188849a9296b` |
| 14 | `lemma` | [castSuccEmb_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/castsuccemb-apply.md) | 117 | `result-track:49b899be03a7455a0a3e3d8752ae9dee9349e3f4ee6e9ac9b0b90cbe3551174c` |
| 15 | `def` | [addNatEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/addnatemb.md) | 121 | `declaration-track:3495afa31814141a69052c3e5e640648eed80d5366258907ca65905552fe69cc` |
| 16 | `def` | [natAddEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/nataddemb.md) | 127 | `declaration-track:b78092fe822e593a2c6ef75579a473da43ceaf4f92cc1579f40db63baf95e0ce` |
| 17 | `def` | [succAboveEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/succaboveemb.md) | 139 | `declaration-track:cd29bd2d81c97c86aa5e1b6b2b2190cf45eb93d44ee6ba723e7bc1b9e33587f8` |
| 18 | `lemma` | [coe_succAboveEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/coe-succaboveemb.md) | 141 | `result-track:034fa8fdd8c031c7077c3f3f491fd55dcef663c013471f097c0582d8b2d5ac38` |
| 19 | `def` | [natAdd_castLEEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/natadd-castleemb.md) | 147 | `declaration-track:6f9947c391834d791a91f8796982a4ea3740e0444da23a1d5e851baf010a974a` |
| 20 | `lemma` | [range_natAdd_castLEEmb](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEmbeddingPublic.lean/declarations/range-natadd-castleemb.md) | 150 | `result-track:e2c22dbc640b939e7872caed52dc754cdfdb283bda9723f4ac4a3f61bfc44c1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28df9be6c7dcef0435b11920155fcefa9074a32edd83fc0a40349d60aab6f257 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variantbc2db073aaba9c6026c4bcd7213a1c7f9b05cc28b87a7e7f4006096d4fc383d0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variantbc2db073aaba9c6026c4bcd7213a1c7f9b05cc28b87a7e7f4006096d4fc383d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
