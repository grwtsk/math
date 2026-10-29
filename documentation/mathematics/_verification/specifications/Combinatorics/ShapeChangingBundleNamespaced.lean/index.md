# Verification target: Shape Changing Bundle Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d246e765df8bb59d64109c0fecb8c872721d411",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant17b9baf25f69db6ac1bf27832bf61ffa64e373d65f52985f3c39766262e814ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d246e765df8bb59d64109c0fecb8c872721d411`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant17b9baf25f69db6ac1bf27832bf61ffa64e373d65f52985f3c39766262e814ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant17b9baf25f69db6ac1bf27832bf61ffa64e373d65f52985f3c39766262e814ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Expansion.Shell` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Fiber` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [levelShape](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/levelshape.md) | 34 | `declaration-track:541418ff64b29fa09c6c5fcf893418b3550bb6779fcc577ba23690c317886642` |
| 2 | `theorem` | [levelShape_rows_succ](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/levelshape-rows-succ.md) | 38 | `result-track:9bb713aafbb30c0041fe295ff10a0bcfa7bd780750c34df9ddc3f578025fdd41` |
| 3 | `theorem` | [levelShape_cols_succ](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/levelshape-cols-succ.md) | 45 | `result-track:29270a5d6194bd26420e2106ecc2c47a47cbd8d6be5a4e0e4ad3cf75f7ddfe08` |
| 4 | `structure` | [ShapeChangingState](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/shapechangingstate.md) | 52 | `declaration-track:699ca5fab157851e8eafd855e7b45ccadfe3965aec5eedbc36c96a63c2cd885c` |
| 5 | `structure` | [ShapeStepPayload](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/shapesteppayload.md) | 58 | `declaration-track:57c107fec66b1b8e0c98d2a20577223e09fa8a5b6325e2ab1cfd7a4337245ccf` |
| 6 | `def` | [expandWithShell](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/expandwithshell.md) | 64 | `declaration-track:69e8865107fb006fa3e13d1f791678f70d048c18194c66480d7c59108752a844` |
| 7 | `def` | [contractOneStep](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/contractonestep.md) | 76 | `declaration-track:49e0653398a2c20b3b78c57c092f85742b92f053c1da287598a02aa9d91d5a25` |
| 8 | `theorem` | [contract_expandWithShell_center](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/contract-expandwithshell-center.md) | 86 | `result-track:08f9193a92df69a4abbdab734bb193267746f890cb9a3ebe8da921ea6859f3c6` |
| 9 | `theorem` | [contract_expandWithShell_shell](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/contract-expandwithshell-shell.md) | 103 | `result-track:19725645b04e0702ab12babc31a3f3b8a2567c88c91c02e15ab116f3f2d41ff6` |
| 10 | `theorem` | [expand_contractOneStep](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/expand-contractonestep.md) | 119 | `result-track:550356182e123f1c4cd3e687f3709331944f8ba8bdd9164c7cff4e47ad10fa79` |
| 11 | `theorem` | [shape_changes_of_step](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/shape-changes-of-step.md) | 135 | `result-track:eaf121705fe76a9a30ebfb4d8dddc7e63de1af2e3bf778007bd0023f58c540d8` |
| 12 | `def` | [catalanShape](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/catalanshape.md) | 144 | `declaration-track:25182e8da441175774897ebe6ef3f1db1c0255eec68e20788fce57c62075fd34` |
| 13 | `theorem` | [catalanShape_rows_of_internal_succ](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/catalanshape-rows-of-internal-succ.md) | 149 | `result-track:dbfe3594dea36669718b16bea7c2e501e3957a0d6685f60c8df8a8ae23094134` |
| 14 | `theorem` | [catalanShape_cols_of_internal_succ](../../../../Combinatorics/ShapeChangingBundleNamespaced.lean/declarations/catalanshape-cols-of-internal-succ.md) | 159 | `result-track:11fe5e0177e616ec82e35488db941cd25d74a8872eff0d24826db4608610a42d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5f103e3468ed0a560ecfc20a815d07655fee9eda12a9ebccbb8f966f8600f3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant17b9baf25f69db6ac1bf27832bf61ffa64e373d65f52985f3c39766262e814ed.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/ShapeChangingBundle/Variant17b9baf25f69db6ac1bf27832bf61ffa64e373d65f52985f3c39766262e814ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
