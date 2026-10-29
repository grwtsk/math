# Verification target: Etale Kaehler Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48bfeee74dc527e412956ee6ada4055339e5e187",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48bfeee74dc527e412956ee6ada4055339e5e187`.

Source path: `GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean.json)

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
| 1 | `def` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale.md) | 38 | `declaration-track:73a56bc7a3fadeb93c7b36b3acf13845fce16131096605634f6a42abb5cb817e` |
| 2 | `lemma` | [KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale_symm_D_algebraMap](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/kaehlerdifferential-tensorkaehlerequivofformallyetale-symm-d-algebramap.md) | 47 | `result-track:aa76211c27f12d3677aafd73b2154993823d775e6e680b83c43cf05193e10f69` |
| 3 | `lemma` | [KaehlerDifferential.isBaseChange_of_formallyEtale](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/kaehlerdifferential-isbasechange-of-formallyetale.md) | 53 | `result-track:864e3435eb60101871749880e6c442d32cd3e7ce61a35ec28bbaa1fef30de7e1` |
| 4 | `instance` | [KaehlerDifferential.isLocalizedModule_map](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/kaehlerdifferential-islocalizedmodule-map.md) | 63 | `declaration-track:6575b6ba8fe173ac0c149e26e6210fdf4c7cb1c12a62f07d115d86af5ccf085e` |
| 5 | `lemma` | [KaehlerDifferential.span_range_map_derivation_of_isLocalization](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/kaehlerdifferential-span-range-map-derivation-of-islocalization.md) | 68 | `result-track:5bc3eab088a47ca50f3978040ccf2b7914fe2ca1a2173564f46a916ae75be5be` |
| 6 | `def` | [tensorCotangentSpaceOfFormallyEtale](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorcotangentspaceofformallyetale.md) | 97 | `declaration-track:dbb2bc1c1488146ed18eacce468c8208a3db08691967f088ae25ccd9e9486a1d` |
| 7 | `def` | [tensorCotangentInvFun](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorcotangentinvfun.md) | 145 | `declaration-track:5e537c59bf5baac1946bb738621f2fda8f62c607df513f983d7f42b26d73c6a1` |
| 8 | `lemma` | [tensorCotangentInvFun_smul_mk](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorcotangentinvfun-smul-mk.md) | 184 | `result-track:d0f6cfe78a3d2f675f71c0faa035e2f03835c92ba0db540d51030eab82e58a0b` |
| 9 | `def` | [tensorCotangent](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorcotangent.md) | 203 | `declaration-track:2302077551b5707b0f3edc23d72ead2dad9a8825ca2f20ab7dd1457383ec3763` |
| 10 | `def` | [tensorH1CotangentOfFormallyEtale](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorh1cotangentofformallyetale.md) | 233 | `declaration-track:a060b29221ece4b634a482e7f3ba5bf79e94a93c4773d206d3a8040a5a6a2281` |
| 11 | `def` | [tensorH1CotangentOfIsLocalization](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorh1cotangentofislocalization.md) | 277 | `declaration-track:d6642aa53cec37f36d1c97c82124b28d277fa946dd39aae69db85a74488793df` |
| 12 | `lemma` | [tensorH1CotangentOfIsLocalization_toLinearMap](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/tensorh1cotangentofislocalization-tolinearmap.md) | 341 | `result-track:8c976acec89b588f31d766102f0deaff4f6135305fdcc61b89a7cb80ed29f3e4` |
| 13 | `instance` | [H1Cotangent.isLocalizedModule](../../../../CommutativeAlgebra/EtaleKaehlerPublic.lean/declarations/h1cotangent-islocalizedmodule.md) | 381 | `declaration-track:de9652ea7b6a49adaf8356291dcb12b8edc6a24d8d7134ff2c8b0cdef4367f12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83f83bd1b63bdb12a171b785a72b338096ee924a9926dd78bfbf1e197d5badab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean","GRWTSK/_verification/specifications/Algebra/Kaehler/Varianta92f7d28a44b1b7eff8d6509510b8354b5ed24c6adede42e539de5a32be2c1c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
