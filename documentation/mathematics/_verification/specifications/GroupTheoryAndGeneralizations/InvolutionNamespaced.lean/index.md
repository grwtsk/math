# Verification target: Involution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "915dc8a2e06bb969baede402096787c15cbda117",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `915dc8a2e06bb969baede402096787c15cbda117`.

Source path: `GRWTSK/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.Permutation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedInvolution](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/certifiedinvolution.md) | 30 | `declaration-track:cf3595461a8c6a301ad91ef2c7d21d21d7d3a98cdf07284b3a78d2ae0c3bbbd2` |
| 2 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/toperm.md) | 42 | `declaration-track:c89a2c9a2b0f462add04e421c5250b8bc94561c17317934c3ff726c1bc3a484f` |
| 3 | `theorem` | [toPerm_apply](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/toperm-apply.md) | 49 | `result-track:29a453431b043a8f4c39d02a1d59b6fc5f1480fcd04ecd9d83b9225c8976df23` |
| 4 | `theorem` | [toPerm_symm_apply](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/toperm-symm-apply.md) | 54 | `result-track:ae3e9487f18db4e2eae2b6a72088fa6069b9a15f9f1be34fc1fdac4aa825dedf` |
| 5 | `theorem` | [act_act](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/act-act.md) | 59 | `result-track:58861615882db4fea255c21924b4ba91a0af36c56d260f878e5c63fd3cf61e81` |
| 6 | `theorem` | [toPerm_mul_self](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/toperm-mul-self.md) | 64 | `result-track:8dfd3d6150697d2c045dc8bbc1b2447f98c861e18a7e33aee70ea2e1f5460fa7` |
| 7 | `theorem` | [toPerm_symm](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/toperm-symm.md) | 70 | `result-track:fb8b3cc4afe9328b3561911894e9f492f5990b74b47a1a9a3a622cc538d72c71` |
| 8 | `theorem` | [toPerm_support](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/toperm-support.md) | 76 | `result-track:3726a5625f677809d58387529201b276f793d6feb8a6227d718ae2de6b3be208` |
| 9 | `theorem` | [not_mem_support_iff](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/not-mem-support-iff.md) | 83 | `result-track:d11756da1dbc5c6cd98752673f42158b9b6cedce9947f98816f010b6d035ab06` |
| 10 | `theorem` | [mem_support_act](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/mem-support-act.md) | 92 | `result-track:8ff113cc4cadf40f3b72a5d05d9951db53ba66a2e4b8a67dc81c61c7b1f356a5` |
| 11 | `def` | [pointOrbit](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/pointorbit.md) | 106 | `declaration-track:38bdf0e4cd63ae8b2df42436bd5cdb4f7527fb69703c91e50f1c166cb2d070ec` |
| 12 | `theorem` | [mem_pointOrbit](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/mem-pointorbit.md) | 110 | `result-track:381666ac6f64242e3dbd9a1e2fecfc929686fb5bb4144e2a050aad60348e2e28` |
| 13 | `theorem` | [pointOrbit_act](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/pointorbit-act.md) | 114 | `result-track:2722a87172902b5454649671cf2c10aece6a22b372c416b9e41ec78d623764f2` |
| 14 | `theorem` | [pointOrbit_card](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/pointorbit-card.md) | 119 | `result-track:5c06aa3faabc2035d4596b399ca7d8f3d73de5f54f3aadba13b17960df1173f8` |
| 15 | `theorem` | [pointOrbit_card_eq_one_iff](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/pointorbit-card-eq-one-iff.md) | 126 | `result-track:7fca0f4b6077027c840aecb5fad5abe0751dce2a17bb5ce833a80a18c4bc7c84` |
| 16 | `theorem` | [pointOrbit_card_eq_two_iff](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/pointorbit-card-eq-two-iff.md) | 133 | `result-track:ddac155af49ee34017a9d102735ee007a4da85e6484aef7f5e0bcd6e1740e1a3` |
| 17 | `theorem` | [transposition_pair](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/transposition-pair.md) | 139 | `result-track:afefdea632cd748597f3ac07c48a41ddf455d37962b0b3202c93863462a43654` |
| 18 | `def` | [conjugate](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/conjugate.md) | 146 | `declaration-track:1d3582252cccae447d83daf8fd2e70ddf3dc000ea852af4856510e8d706ee7f5` |
| 19 | `theorem` | [conjugate_act](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/conjugate-act.md) | 164 | `result-track:f48115272e5c456a3816b25e6bf0c06936b7ac7ec51a94f67986675947cb4f24` |
| 20 | `theorem` | [conjugate_support](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/conjugate-support.md) | 168 | `result-track:97ad6b9e96252012e981fc19435830daec11b986e73433872328f29369f9a506` |
| 21 | `theorem` | [conjugate_toPerm](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/conjugate-toperm.md) | 172 | `result-track:2e9f31cf1cc83767e831d11f6d9e3f9a9035cfaf6303ba8f49593a952fa7c401` |
| 22 | `def` | [transport](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/transport.md) | 178 | `declaration-track:09c0afee19913f8500ed5c4fb89d3fa6bdaa35f49e32fb9c01d2c74d907978a4` |
| 23 | `theorem` | [transport_act](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/transport-act.md) | 197 | `result-track:2726feb29604e989ef58b40874116ab26dee5760fcf4b71d7146fa36a3988773` |
| 24 | `theorem` | [transport_support](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/transport-support.md) | 203 | `result-track:6ab83411c1524c499260459e45cab9aee2d572f45139d53d7eae6704163c906a` |
| 25 | `theorem` | [transport_toPerm](../../../../GroupTheoryAndGeneralizations/InvolutionNamespaced.lean/declarations/transport-toperm.md) | 209 | `result-track:0a740614e790ff29109234aec54a700e1b888fa8ef09483bc466b90bb879814c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0adfc1b394d917ec1759b6bb145144527ca46fc8d2c50cdc97e6b961d2bf15c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Involution/Variant7ab582fa3e41c1d147f79b0a68c59fc24f2788bf031abf74f4392bba2babad75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
