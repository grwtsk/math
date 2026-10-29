# Verification target: Instances Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f254d20f10cac42a5591bcbf8627d9616a5f237d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Instances/Variantbd743f75f050b5e62087b2cf7285ca52d13de3caa2a1b2210a114f3a0cff1a7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/InstancesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/InstancesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f254d20f10cac42a5591bcbf8627d9616a5f237d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Instances/Variantbd743f75f050b5e62087b2cf7285ca52d13de3caa2a1b2210a114f3a0cff1a7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Instances/Variantbd743f75f050b5e62087b2cf7285ca52d13de3caa2a1b2210a114f3a0cff1a7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [EquivFunctorUnique](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/InstancesNamespaced.lean/declarations/equivfunctorunique.md) | 26 | `declaration-track:8f9149bbb79e8b2ad54799586dcbbb48e22d9d15093d566a96606c1c417776f1` |
| 2 | `instance` | [EquivFunctorPerm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/InstancesNamespaced.lean/declarations/equivfunctorperm.md) | 31 | `declaration-track:b048653c64c05c094460ea91e0968fdc10de8a8909a7ecde0a775651e83e7d44` |
| 3 | `instance` | [EquivFunctorFinset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/InstancesNamespaced.lean/declarations/equivfunctorfinset.md) | 38 | `declaration-track:7e56535cdf1cf42e799acdaf3eb22a62cf9149eefd8e175bc514b6c388785d14` |
| 4 | `instance` | [EquivFunctorFintype](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/InstancesNamespaced.lean/declarations/equivfunctorfintype.md) | 48 | `declaration-track:0aab36fdb48628b6f428c0fd922467bf866585adade844698d4860327d5c4ecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a511d5c539dabf1b00b206a1559f4e2463a591777c30b7d7db46d07dab8e4b00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Instances/Variantbd743f75f050b5e62087b2cf7285ca52d13de3caa2a1b2210a114f3a0cff1a7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Instances/Variantbd743f75f050b5e62087b2cf7285ca52d13de3caa2a1b2210a114f3a0cff1a7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
