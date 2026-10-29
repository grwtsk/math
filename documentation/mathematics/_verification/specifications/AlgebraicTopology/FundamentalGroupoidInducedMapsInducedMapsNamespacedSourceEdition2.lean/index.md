# Verification target: Fundamental Groupoid Induced Maps Induced Maps Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a237b4cede0ee0e7c24f97693e7805ede89786",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a237b4cede0ee0e7c24f97693e7805ede89786`.

Source path: `GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Product` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [path01](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/path01.md) | 58 | `declaration-track:525c3b965e3dcd794cc0faad3194d71f2cc5381ab100cd8e80310723f2c37e1c` |
| 2 | `def` | [upath01](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/upath01.md) | 65 | `declaration-track:818baadd90e545090af83dd6ee4f225f34ff526da28ae5e73edef9ea062e85e1` |
| 3 | `def` | [uhpath01](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/uhpath01.md) | 74 | `declaration-track:78ba0626d50a090d0abfad0b3e4d297d02d197300b556e98711f986fafdda2ad` |
| 4 | `abbrev` | [hcast](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/hcast.md) | 89 | `declaration-track:f2a918b40b155c4589f7c467ae9c95003399b663b33d91d56e7694c1a0456ec7` |
| 5 | `theorem` | [hcast_def](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/hcast-def.md) | 94 | `result-track:e01b92eed16da671c5881442c878ca71f182ba75855faf0f32bd2a4c4e67073a` |
| 6 | `theorem` | [heq_path_of_eq_image](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/heq-path-of-eq-image.md) | 103 | `result-track:bcead3ce0f170b028510d49bccaa7676221e701efea049a299b1c656e7acb4e2` |
| 7 | `theorem` | [start_path](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/start-path.md) | 107 | `result-track:acdd3814b1b41f65cf56373058e8b727a12afc0f70fccfc25a508569404fe73f` |
| 8 | `theorem` | [end_path](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/end-path.md) | 109 | `result-track:8806ca475cdbd40db91291cda19ed92a303b2493f6043d14c8673f05f13ee764` |
| 9 | `theorem` | [eq_path_of_eq_image](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/eq-path-of-eq-image.md) | 111 | `result-track:0962bd20e09739ae10792e7b4a61d932421073e35a94f799ebaee5a6a30bf86e` |
| 10 | `def` | [uliftMap](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/uliftmap.md) | 148 | `declaration-track:77d46a8de507cb5ad182a132d4e078459586cb8639bff53a5f77610df3a3e5ea` |
| 11 | `theorem` | [ulift_apply](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/ulift-apply.md) | 154 | `result-track:a342b57169cce5782e2845a279a360b0ae0ca9c625c6ef0b477ff55763eca769` |
| 12 | `abbrev` | [prodToProdTopI](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/prodtoprodtopi.md) | 160 | `declaration-track:4275b42d75ff01909a69f9e256c21a4135528a2877cdb974026b696410ddd74d` |
| 13 | `def` | [diagonalPath](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/diagonalpath.md) | 167 | `declaration-track:35e94815b430b063bd0b93c189dd1d7f2a00730a0ca055bfe509e3161850eb67` |
| 14 | `def` | [diagonalPath'](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/diagonalpath-source-edition-2.md) | 172 | `declaration-track:cb11748a77d4b9b336d1d9770998e6f4d268b7e49568dc4e7a72851b0e702b46` |
| 15 | `theorem` | [apply_zero_path](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/apply-zero-path.md) | 177 | `result-track:6a801139144d56f67dba99f55bfa7f0aacf741ad5d9145508907906c76ec3ff1` |
| 16 | `theorem` | [apply_one_path](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/apply-one-path.md) | 186 | `result-track:c0e6ed518bd9b4c05da70f3ea5b22ef07b882f5ee81b58482808b809cbad7bd4` |
| 17 | `theorem` | [evalAt_eq](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/evalat-eq.md) | 195 | `result-track:88d446a6909fecbc4211f0a97686ff5aee9a0c82a5e976b091ad3bd15f372c75` |
| 18 | `theorem` | [eq_diag_path](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/eq-diag-path.md) | 205 | `result-track:c1adcfc64c2f803e33f43c2c7b28a9fd3ad665961fae294c725dc3920b66f40a` |
| 19 | `def` | [homotopicMapsNatIso](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/homotopicmapsnatiso.md) | 232 | `declaration-track:fa689ebfc4ea721a668aa3af403f81f44e233f21c0c95dcfe626324f49fca407` |
| 20 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/instance.md) | 238 | `declaration-track:25023ca96f35c4188bd535be0336cce4391344c063f05f219d2575e33a123b03` |
| 21 | `def` | [equivOfHomotopyEquiv](../../../../AlgebraicTopology/FundamentalGroupoidInducedMapsInducedMapsNamespacedSourceEdition2.lean/declarations/equivofhomotopyequiv.md) | 243 | `declaration-track:9175cda619f65cf4807b76c71d96e4b03ee28fe3605778cca0ae49f10b0458bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=172aee22e61f83edb361a51b731436accce0a4b106324f1d58b32b2072271183 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/InducedMaps/Variantbe1f63d0e0a42ae60eb2d4fcc9ba6394e1f72bf302b0a084da2b780af24c76d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
