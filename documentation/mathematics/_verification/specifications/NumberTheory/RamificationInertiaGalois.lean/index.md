# Verification target: Ramification Inertia Galois

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a038328f38b1c482fdc33948310590e7fe13a9f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variant7ae9d842b64f1f80389950a7eebdf9b0938d79423ebfba8a1165dc62b17ef8e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/RamificationInertiaGalois.lean/index.md) · [Full source](../../../../NumberTheory/RamificationInertiaGalois.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a038328f38b1c482fdc33948310590e7fe13a9f`.

Source path: `GRWTSK/Algebra/Galois/Variant7ae9d842b64f1f80389950a7eebdf9b0938d79423ebfba8a1165dc62b17ef8e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variant7ae9d842b64f1f80389950a7eebdf9b0938d79423ebfba8a1165dc62b17ef8e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.RamificationInertia.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Invariant.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdxIn](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/ramificationidxin.md) | 51 | `declaration-track:e29c0abbf043b33cb7d14e53319628a2bb1dd38a48f09756ce53c30de8727749` |
| 2 | `def` | [inertiaDegIn](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/inertiadegin.md) | 60 | `declaration-track:2db97a13c3b1e08350e34e54189a4261d0369dc3bb7bb0a37fc0c664a151a8d8` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:52b75a039fb00964f93c777355e6987505253db40b7b898d178a39864fd95b8b` |
| 4 | `theorem` | [coe_smul_primesOver](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/coe-smul-primesover.md) | 74 | `result-track:c88b154237edc7300f67b8c9904a887b114ef50ba3b6368c252f662355145431` |
| 5 | `theorem` | [coe_smul_primesOver_mk](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/coe-smul-primesover-mk.md) | 78 | `result-track:5c3232fd0a0c10881cbcf572b76b86d420f0a37e2ecc50c00e540fdcfbc249b8` |
| 6 | `instance` | [(anonymous)](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/instance-source-edition-3.md) | 86 | `declaration-track:6a5c6c8e140d0552be9aeba2369109121877b3e5d3910b46c468402b3e88ab0c` |
| 7 | `theorem` | [coe_smul_primesOver_eq_map_galRestrict](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/coe-smul-primesover-eq-map-galrestrict.md) | 98 | `result-track:cd7dfb114bd4618a3a8f6d2f94a31e76436433e8d2ee2ef170ecd96ab6bdd212` |
| 8 | `theorem` | [coe_smul_primesOver_mk_eq_map_galRestrict](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/coe-smul-primesover-mk-eq-map-galrestrict.md) | 102 | `result-track:850d918d47b1cad2e7021438fcdce1c9aa326098820f94bc1f78da94bc914a47` |
| 9 | `theorem` | [exists_map_eq_of_isGalois](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/exists-map-eq-of-isgalois.md) | 121 | `result-track:60d8256db8bbf646df9fcd2c2df61db351ad4b691097d386d788e869b726b27d` |
| 10 | `theorem` | [isPretransitive_of_isGalois](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/ispretransitive-of-isgalois.md) | 128 | `result-track:4613763ea44ff8728e68f24a434e680781570b81957ea8c346077513d2835b36` |
| 11 | `instance` | [(anonymous)](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/instance.md) | 135 | `declaration-track:4fc7644b49733b2134549f28f1c2d7db75a5b154ca2ef1713305386cff5882ab` |
| 12 | `theorem` | [ramificationIdx_eq_of_isGalois](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/ramificationidx-eq-of-isgalois.md) | 143 | `result-track:3e31dbf726c7c7a17c77be9fb07a839321f7f0a5ca2c99be1136e038fd2eda38` |
| 13 | `theorem` | [inertiaDeg_eq_of_isGalois](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/inertiadeg-eq-of-isgalois.md) | 150 | `result-track:0772a6366238e1aa173861d11256151b0c30914d0ceee4218a9d51d14234bfe9` |
| 14 | `theorem` | [ramificationIdxIn_eq_ramificationIdx](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/ramificationidxin-eq-ramificationidx.md) | 157 | `result-track:f6a83578a78d466e4a86974000ee7da1cc76b92a1122f7178cd109ae4c71c6bf` |
| 15 | `theorem` | [inertiaDegIn_eq_inertiaDeg](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/inertiadegin-eq-inertiadeg.md) | 165 | `result-track:1b33a8f37c40da337e8ecdcd17b1eb1a263ea5a172366362452e533c4547f103` |
| 16 | `theorem` | [ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn](../../../../NumberTheory/RamificationInertiaGalois.lean/declarations/ncard-primesover-mul-ramificationidxin-mul-inertiadegin.md) | 184 | `result-track:fc71a5858070b04676453c5651bde388ac4ac01d1d687777e207838e3423c11c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44b3e9b1ff7d2df9c344436a367b96deeba7a27eb941eda2a2b7c190aa9b51a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Galois/Variant7ae9d842b64f1f80389950a7eebdf9b0938d79423ebfba8a1165dc62b17ef8e6.lean","GRWTSK/_verification/specifications/Algebra/Galois/Variant7ae9d842b64f1f80389950a7eebdf9b0938d79423ebfba8a1165dc62b17ef8e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
