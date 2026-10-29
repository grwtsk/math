# Verification target: Limits Forget Add Comm Group Preserves Limits Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcdd78dcfaa888f0a5e16d9295e5d498c673e871",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcdd78dcfaa888f0a5e16d9295e5d498c673e871`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectLimit` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommGroupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/addcommgroupobj.md) | 37 | `declaration-track:9dc5d76462e356f75e79cc7326c1d7aedcbf069f4d4e7488e0751f5abc533f74` |
| 2 | `instance` | [moduleObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/moduleobj.md) | 44 | `declaration-track:045d4e2f7ad3e3bdfbd2b9985e40d10c24ed0ff93ec85abd4ad627670ac2c3bd` |
| 3 | `def` | [sectionsSubmodule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/sectionssubmodule.md) | 52 | `declaration-track:7aafa1dea005a41f40c52d0a69cd7c64903100276014f58e797e30162b331936` |
| 4 | `instance` | [limitAddCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitaddcommmonoid.md) | 65 | `declaration-track:79a46448bb1dd80154d374759eaf2b7f6065d15fd865d9fb27f5c4693ece7143` |
| 5 | `instance` | [limitAddCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitaddcommgroup.md) | 70 | `declaration-track:72892e95581ce2606fedbe99ce8fb8ac56308b8d5410d0e2cdac54e73f962eb9` |
| 6 | `instance` | [limitModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitmodule.md) | 75 | `declaration-track:273195e7dcd1ecc5a9015b21b6185a8e00c179e59b3a919f5de15e4a0f292884` |
| 7 | `def` | [limitπLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/limit-linearmap.md) | 81 | `declaration-track:09987b2934007257228088101696cd19cc65a1b013bd268e9110ddfa75b11d93` |
| 8 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitcone.md) | 97 | `declaration-track:133259e58d51215322fc88775c7e3738dd0d8a76f936650b841033980334f6c7` |
| 9 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitconeislimit.md) | 108 | `declaration-track:67c2ed2ab3b948d8a6b26aa6dd39d04b95ca8b153f780d811329216ab6cf8c78` |
| 10 | `lemma` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/haslimitsofsize.md) | 127 | `result-track:25919957355ffb7d84661757711ed2ab6a08d2ffa82ddb5ce60a2123bb077461` |
| 11 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/haslimits.md) | 134 | `declaration-track:5e82d278aaebb23d3860471446f9f3d9547295c627f4b1ea67c072e0c84ebbd8` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/instance.md) | 138 | `declaration-track:431a4706ea87f72c0b56d61d8ea5f54877614e01859dc5d2d5fb3d32e786c162` |
| 13 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/forget-addcommgrouppreserveslimitsaux.md) | 143 | `declaration-track:6f125d1eacb50fd6bcb2d962838bab610fea2b4bf02b07fdf33366e9255d761d` |
| 14 | `instance` | [forget₂AddCommGroupPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/forget-addcommgrouppreserveslimitsofsize.md) | 151 | `declaration-track:84a238235c71d5774fa964542fefdd1251be36704d9fedaf5da3c8d08c8528c4` |
| 15 | `instance` | [forget₂AddCommGroupPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/forget-addcommgrouppreserveslimits.md) | 159 | `declaration-track:eff4c26b5fa66ad4e61bc8f463404cc2be7064d65c57424dd6c237070f2855c2` |
| 16 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/forgetpreserveslimitsofsize.md) | 166 | `declaration-track:fb8678b8d4ac5df6f029022f73a2d7c650f365bc823b4caccd6ff794bd0c36d6` |
| 17 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/forgetpreserveslimits.md) | 173 | `declaration-track:7f3cc9339e13097817a7f84578d4efd65a2010140d3cb0eaa1ccdc1b4ba8d1cb` |
| 18 | `def` | [directLimitDiagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/directlimitdiagram.md) | 194 | `declaration-track:b07f76b934e0b2f5ee3c3515338687007739a66e85ffec17ccd19a23ff41cf69` |
| 19 | `def` | [directLimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/directlimitcocone.md) | 215 | `declaration-track:2d0b058365f837bff36e784d52497d94f0ff57e3a04507ee39980bdc0d4a6296` |
| 20 | `def` | [directLimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsForgetAddCommGroupPreservesLimitsAux.lean/declarations/directlimitiscolimit.md) | 228 | `declaration-track:261079fe2ab2991ecb595dfc746f422256d5bb94c5db5c3d512f2a326e2250fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13ba5d25c6db004f81a2179d88f699ccea25cc75b7d4a3af9d2814fba6193bf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Limits/Variant2678adc8ebb82deb9ca4e3bd9af401c78dc1700f0847be9876aeb087469e2313.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
