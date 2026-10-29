# Verification target: Models Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7029e9d44c77b559d13a989d7a8f52d45ffe2818",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ModelsNamespacedEdition1.lean/index.md) · [Full source](../../../../Combinatorics/ModelsNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7029e9d44c77b559d13a989d7a8f52d45ffe2818`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Registry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrototypeModel](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypemodel.md) | 29 | `declaration-track:76d7dfe6653ac9e12f69b74b1cb72ec4df51ecefe18a1b71c60485e3116ef487` |
| 2 | `def` | [prototypeModelId](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypemodelid.md) | 38 | `declaration-track:30894aea5332d1d22bd3a6fce709b717643880a71d913eaee91946beb510c837` |
| 3 | `def` | [prototypeSemanticVersion](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypesemanticversion.md) | 46 | `declaration-track:4d68d34f2d1b6abaf9b1fae5664b5a476e07605c95e55ea330b75a6abea0cdd5` |
| 4 | `def` | [prototypeVersionCoordinates](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeversioncoordinates.md) | 51 | `declaration-track:e7998d5b09eb827b998a8ec042c874c7c83fa7c336729f9498d5be4bf54d9965` |
| 5 | `def` | [prototypeSourceDigest](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypesourcedigest.md) | 63 | `declaration-track:e47843aa0d9322bcedf151b0f961c4f5b89db7b57954206f7fc8bce658980071` |
| 6 | `def` | [historicalQuantizationSourceDigest](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/historicalquantizationsourcedigest.md) | 76 | `declaration-track:e6ea8f0c20ceae6e072dc682938ede40b6972ef46a07a1733ae367bb1af165bf` |
| 7 | `theorem` | [live_quantization_digest_ne_historical](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/live-quantization-digest-ne-historical.md) | 79 | `result-track:baf3639e36450402421e6c630170ef752c879d57f376c356ffdee802f616c00e` |
| 8 | `def` | [prototypeModelIdentity](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypemodelidentity.md) | 85 | `declaration-track:e47fc4bad4a22bcf0b98cc2d014b4d9b49b5b493ed0282fd5e9f72df85662cc0` |
| 9 | `def` | [prototypeSourceModule](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypesourcemodule.md) | 92 | `declaration-track:046a1f52442fe7cf086f874948f4744c9247a3cb265f7b9f42c03c1629348bc1` |
| 10 | `def` | [prototypeDependencies](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypedependencies.md) | 100 | `declaration-track:1e2e6afc0d7b5ca6c821526f6a531b8ee91c9f02d5bc8bc879aea5c80d8279cb` |
| 11 | `def` | [prototypeRank](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototyperank.md) | 110 | `declaration-track:b9e766f549ee2ce5ff5e2482d8eb183d8e7737666a41249c401ed9439f969376` |
| 12 | `def` | [prototypeDependencyIds](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypedependencyids.md) | 116 | `declaration-track:0ab6441ef56dd3bbbf80a37705009a2e54db339d3cab86edd05c386e3d4b7070` |
| 13 | `theorem` | [prototype_dependency_rank_lt](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototype-dependency-rank-lt.md) | 127 | `result-track:12b764d68397c5b140526d686da0b4db0cbc9e49e5a3548afee9a420524fcdd1` |
| 14 | `abbrev` | [prototypeDependencyGraph](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypedependencygraph.md) | 149 | `declaration-track:20e63ddbf436d2ba6dadba785e1faee2b08242456111762ef79330ca6e9b73ba` |
| 15 | `def` | [emptyRegistry](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/emptyregistry.md) | 155 | `declaration-track:88ecd86b0200ec5598bab90dc4bf3ae98556a78a38e997629d23980afd70d305` |
| 16 | `def` | [prototypeObjectId](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeobjectid.md) | 159 | `declaration-track:bed5281e6e815094b0775e5c917b1a08e8c7cad6247d6fa257e15e43499b6f63` |
| 17 | `def` | [prototypePropositionId](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypepropositionid.md) | 163 | `declaration-track:453af772f09c0ea02315e4127e70977bc9c26ef439a1f8975bd17e9f75083fa6` |
| 18 | `def` | [prototypeDeclarationId](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypedeclarationid.md) | 167 | `declaration-track:5071fe39be0c5a050f569d45f6fe59ea8788ae596036212ff05893447cbf544f` |
| 19 | `def` | [prototypeAssumptionId](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeassumptionid.md) | 180 | `declaration-track:428333537826356c72526225110ae8e0f5c39774d7568320445ca1c4dfd15861` |
| 20 | `def` | [prototypeTrustedBase](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypetrustedbase.md) | 189 | `declaration-track:9151dab33684da1bf2230851fb618041c7a03c40e8c84ee74d82669b5c8d98d1` |
| 21 | `def` | [prototypeObjectRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeobjectrecord.md) | 199 | `declaration-track:4dc14544b0a0b31e1169f0f80a52801d979dacc78d324ee2f80c13d74a8c0795` |
| 22 | `def` | [prototypePropositionRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypepropositionrecord.md) | 207 | `declaration-track:3c6e6d4a0ef6f2f0702dc877b931c3a97457388094e9e492905decb6c35f4c50` |
| 23 | `def` | [prototypeAssumptionRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeassumptionrecord.md) | 216 | `declaration-track:6bd06fc7e4c0f90a877ef47b279d196f46482944c1cbe5c790fc9d933db4ffaf` |
| 24 | `def` | [prototypeProofAuthorityRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeproofauthorityrecord.md) | 225 | `declaration-track:8b01c255ea6aa4a8bf53ed5be713791fbc30cc36c3d9de4e60d04492b622f92f` |
| 25 | `def` | [prototypeExampleRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeexamplerecord.md) | 237 | `declaration-track:8980f605ea585b870e9d34f39ec981a823d7c5d2884bb3342fe1719902f5fd8a` |
| 26 | `def` | [prototypeCounterexampleRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypecounterexamplerecord.md) | 245 | `declaration-track:1e57809d08c8f0d6c596e23f5acfbf3103ae303f42e0d7b70879f5f4178422ef` |
| 27 | `def` | [prototypeOpenObligationRecord](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeopenobligationrecord.md) | 254 | `declaration-track:855f523e639aa03520240913c76104e8afd8ec6c971231e24ee5dd16212cbf9b` |
| 28 | `def` | [prototypeWorldModel](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeworldmodel.md) | 268 | `declaration-track:1dac4b9172bb8113c6fa5a5a7d969ac98ae15492e65cf2889020d89a9f7763b9` |
| 29 | `theorem` | [prototypeWorldModel_metadata_complete](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeworldmodel-metadata-complete.md) | 305 | `result-track:f25be378ebcb8151423643a89a8fe766de443ebff624f215c89dced9199ae227` |
| 30 | `theorem` | [prototypeWorldModel_trustedBase_not_declaredClosed](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeworldmodel-trustedbase-not-declaredclosed.md) | 316 | `result-track:a5dbfbe36b5d77d07421f3efe44c252fb6eac65a3bc35653d0345460f85d87ed` |
| 31 | `theorem` | [prototypeWorldModel_proofAuthority_is_declarative](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototypeworldmodel-proofauthority-is-declarative.md) | 323 | `result-track:b773f25e8d8496aaeac4167eb06e5eb045e50eddb5fa1ac64c8ab5bc7f0b0ebf` |
| 32 | `theorem` | [prototype_model_identities_injective](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototype-model-identities-injective.md) | 329 | `result-track:9ee848fc4eed5766bdf531ebc6449067a429d1e9ace056793189036c2b68f575` |
| 33 | `def` | [prototypeRegistry](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototyperegistry.md) | 338 | `declaration-track:f5694a9652f8794d01f5f5bb1a655091fa310655103ac18c8b68c56e4a4e9b23` |
| 34 | `theorem` | [prototypeRegistry_card](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototyperegistry-card.md) | 354 | `result-track:ba627005bea5b98958b1e1ca144dc0b0ccb4fe686ac929f99088825d37f7b1b1` |
| 35 | `theorem` | [prototypeRegistry_source_digest](../../../../Combinatorics/ModelsNamespacedEdition1.lean/declarations/prototyperegistry-source-digest.md) | 360 | `result-track:208ae618509576d6e37e584a094d8a765c935b8b38b3ef8d4cebc89d9219320c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2d4640ed95e2ac0f2deee027d0f05a7277ff8c6283bd64f2770e787610d2b73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Models/Variant435187db61b8f0536bc625d93de8b7083c2da350a749f61c2e61d6cfde10e847.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
