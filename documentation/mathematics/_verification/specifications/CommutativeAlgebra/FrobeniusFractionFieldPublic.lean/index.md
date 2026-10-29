# Verification target: Frobenius Fraction Field Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "836ee4773bbf9bdb56b5cf1547fb6193bd787196",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variantd42b416e872e1ffe93fe15889486ccab8385b497d554fabaf125cc97e8a9d0af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `836ee4773bbf9bdb56b5cf1547fb6193bd787196`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variantd42b416e872e1ffe93fe15889486ccab8385b497d554fabaf125cc97e8a9d0af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variantd42b416e872e1ffe93fe15889486ccab8385b497d554fabaf125cc97e8a9d0af.lean.json)

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
| 1 | `def` | [succNthDefiningPoly](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/succnthdefiningpoly.md) | 72 | `declaration-track:083e014686f8c70c9225d8fef1c9f52535ec38b781f8780f3a827420a559b642` |
| 2 | `theorem` | [succNthDefiningPoly_degree](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/succnthdefiningpoly-degree.md) | 80 | `result-track:38f5274a8cb0e90971df51495d0f8a40bbc1aef304351a34e20aac722804f271` |
| 3 | `theorem` | [root_exists](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/root-exists.md) | 104 | `result-track:f0e3494eb5e815f746864751fa8debfd35f25b78cd4182b3f0c148d9859a1c18` |
| 4 | `def` | [succNthVal](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/succnthval.md) | 111 | `declaration-track:1b91a45d2cae272df88c9d41485ee5bcb08b7b7fab418e61ef29b5fdd0573f84` |
| 5 | `theorem` | [succNthVal_spec](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/succnthval-spec-source-edition-2.md) | 115 | `result-track:645b361b1d2f7b9b36776f0bcd4462f09fadf0c2bb8e6b3b0f57e06c8aa7b078` |
| 6 | `theorem` | [succNthVal_spec'](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/succnthval-spec.md) | 120 | `result-track:113602a598262e402765edda256c998eada923232b02e67f823efeb37a8aa67b` |
| 7 | `theorem` | [solution_pow](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/solution-pow.md) | 145 | `result-track:6dd73e1c15171dcaf36c0465ff0c8383e41989fe7e6de91f1602ec0d23b9d756` |
| 8 | `def` | [solution](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/solution.md) | 149 | `declaration-track:fc3d3e80d6969638301cfd2991c12e1429a9909877f5e6c1af78d5857d1edb73` |
| 9 | `theorem` | [solution_spec](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/solution-spec.md) | 152 | `result-track:6168f65e02e05d7ca9dfbaf546e3906800d93f2415516cede22fdf6f11bc0157` |
| 10 | `theorem` | [solution_nonzero](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/solution-nonzero.md) | 155 | `result-track:ddb27c644488ed3d82fa5b34f15d0e62dd1168d74c5ca58c76391d56a40743fb` |
| 11 | `theorem` | [solution_spec'](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/solution-spec-source-edition-2.md) | 163 | `result-track:a02abe8929c392ca5ea9544525625ff4e06a45d094fefd110960cceb8bffd946` |
| 12 | `def` | [frobeniusRotationCoeff](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/frobeniusrotationcoeff.md) | 180 | `declaration-track:d32ee7f5401ffe21a66cbdcf0abc45f6fbb4abb92dbb0a7bbfe17239126420ff` |
| 13 | `def` | [frobeniusRotation](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/frobeniusrotation.md) | 188 | `declaration-track:3ea66f8b2102decd86018ab1abd0de6bfe1c37bd00d5ed48015f739c51660970` |
| 14 | `theorem` | [frobeniusRotation_nonzero](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/frobeniusrotation-nonzero.md) | 191 | `result-track:1d5e8151f66363e20da3cfeb7e5e2c6f590c9726f1bf7ae496c5c69a3f97ed06` |
| 15 | `theorem` | [frobenius_frobeniusRotation](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/frobenius-frobeniusrotation.md) | 198 | `result-track:a03de96a887f1fe7cbc20cca34f2eb3df5901e3ca5d0d441797ddd75818e118b` |
| 16 | `theorem` | [exists_frobenius_solution_fractionRing_aux](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/exists-frobenius-solution-fractionring-aux.md) | 219 | `result-track:38588346aa679cca4bd78000f303f84e35d4423412851e646879250e432d273c` |
| 17 | `theorem` | [exists_frobenius_solution_fractionRing](../../../../CommutativeAlgebra/FrobeniusFractionFieldPublic.lean/declarations/exists-frobenius-solution-fractionring.md) | 240 | `result-track:f0dd35c196947b1aa7c997c38e5ca8cd7245276d147aa82a152ee98955e382b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aaceedfd3253a241e9e1c551bc3b3acd5826f01d2456e5ffc7bce63aa3161765 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variantd42b416e872e1ffe93fe15889486ccab8385b497d554fabaf125cc97e8a9d0af.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variantd42b416e872e1ffe93fe15889486ccab8385b497d554fabaf125cc97e8a9d0af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
