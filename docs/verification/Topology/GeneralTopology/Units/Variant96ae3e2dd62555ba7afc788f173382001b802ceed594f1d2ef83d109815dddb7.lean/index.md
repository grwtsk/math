# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4c08c619244e83ba974395ba9da31a017a602bc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4c08c619244e83ba974395ba9da31a017a602bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/unitslift--a67f2970f761716c18d6c701.md) | 34 | `declaration-track:a67f2970f761716c18d6c701d5f480fcac383fcb104349bf088001f1a6446b74` |
| 2 | `lemma` | [unitsLift_apply_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/unitslift-apply-inv-apply--ba9e63b931c29dd0d2371fca.md) | 54 | `result-track:ba9e63b931c29dd0d2371fca07b084fb7243f8fed14f8ff6efbacf50f9532ade` |
| 3 | `lemma` | [unitsLift_symm_apply_apply_inv'](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/unitslift-symm-apply-apply-inv--cf752f0cb2f707d562f17c72.md) | 60 | `result-track:cf752f0cb2f707d562f17c72838c6dd40365792b8f0de00e57823caaf7579616` |
| 4 | `theorem` | [continuous_isUnit_unit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/continuous-isunit-unit--e4df3ff94dfb420091fcb218.md) | 70 | `result-track:e4df3ff94dfb420091fcb2189deeaf409bb88f475b65d258d6b957e5eb1e9bf3` |
| 5 | `def` | [unitsOfForallIsUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/unitsofforallisunit--3eb98699d149dfa22383730a.md) | 86 | `declaration-track:3eb98699d149dfa22383730ad92bcd1486b1332ed6a3169dac1f3b1411d82ed5` |
| 6 | `instance` | [canLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/canlift--1b0f3bf3acb67380f842ba21.md) | 91 | `declaration-track:1b0f3bf3acb67380f842ba216f2aaa905b28476197efdeb5a5b9c3b2c303e45c` |
| 7 | `theorem` | [isUnit_iff_forall_isUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/isunit-iff-forall-isunit--c85a1f5410958fb80e34061d.md) | 97 | `result-track:c85a1f5410958fb80e34061d4930eb7f4e59bc349995ebee30e984f185d15f70` |
| 8 | `theorem` | [isUnit_iff_forall_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/isunit-iff-forall-ne-zero--54da757c38c87f44b3a1ae01.md) | 108 | `result-track:54da757c38c87f44b3a1ae019574426c965507b1879f151971c60f6319b8b4ed` |
| 9 | `theorem` | [spectrum_eq_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variant96ae3e2dd62555ba7afc788f173382001b802ceed594f1d2ef83d109815dddb7.lean/declarations/spectrum-eq-range--e9b35ecab13f9da440ec6beb.md) | 112 | `result-track:e9b35ecab13f9da440ec6beb7703027da27ebe2eaa92007865ac19f572a7b4d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
