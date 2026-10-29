# Verification target: Equational Criterion Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b398043cd825681679fecfc844744aca33de98",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b398043cd825681679fecfc844744aca33de98`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Vanishing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.FinitePresentation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/istrivialrelation.md) | 79 | `declaration-track:fe5e2046f40d776b30a129989035e785adb4d111eb20938436b294dc46329649` |
| 2 | `theorem` | [isTrivialRelation_iff_vanishesTrivially](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/istrivialrelation-iff-vanishestrivially.md) | 87 | `result-track:207dc25f41182d14ec22df216b039a487030de0b0ca516cc3c9bb5d9524d90e4` |
| 3 | `theorem` | [Equational Criterion Namespaced](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/istrivialrelation-comp.md) | 91 | `result-track:52fc6a06d0b8bd96b837f3a26cb7768d177cb63c8127cdb769beae76cb6ba400` |
| 4 | `theorem` | [sum_smul_eq_zero_of_isTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/sum-smul-eq-zero-of-istrivialrelation.md) | 97 | `result-track:3cd66edb7da72120e71c01cb7271ab5e0911e313b23c24b36b7ee5bd14d76e34` |
| 5 | `theorem` | [tfae_equational_criterion](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/tfae-equational-criterion.md) | 121 | `result-track:3152b0118642b556bae26470ed90ac7cbf3600514a58cda2ba5c55a482b109f7` |
| 6 | `theorem` | [iff_forall_isTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/iff-forall-istrivialrelation.md) | 175 | `result-track:d603bfe9d74913269ca629add740ef1a1122aec1f2708536b298e1de649152b3` |
| 7 | `theorem` | [isTrivialRelation_of_sum_smul_eq_zero](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/istrivialrelation-of-sum-smul-eq-zero.md) | 183 | `result-track:b139fa0add972c78d78487124b648e3bcb8baddd6aeb2d684c4e5893b1ee2c04` |
| 8 | `theorem` | [of_forall_isTrivialRelation](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/of-forall-istrivialrelation.md) | 192 | `result-track:70583ec18846ad210f1e100fe43343f65748738d66ea4eb56e53a40ad9dac93a` |
| 9 | `theorem` | [iff_forall_exists_factorization](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/iff-forall-exists-factorization.md) | 203 | `result-track:af2a7632f14e4a723ce42ac7a0494eb497e468f0741901288c351b107aa7a0fb` |
| 10 | `theorem` | [of_forall_exists_factorization](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/of-forall-exists-factorization.md) | 215 | `result-track:63b54181c5d6e0b8042a930cc481db2963ae3fc7c6ab91e2e67ef4ea142a48ec` |
| 11 | `theorem` | [exists_factorization_of_apply_eq_zero_of_free](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/exists-factorization-of-apply-eq-zero-of-free.md) | 227 | `result-track:d7398e0e3e8305e2fb3039829af93b1266d88d1caffb14e103c3f95e7abc2a28` |
| 12 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free_aux](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/exists-factorization-of-comp-eq-zero-of-free-aux.md) | 238 | `result-track:6c97192bf5fa8c0318b2222dd13ebe09f6b2d6db7c54d4c00691be2efe2eddef` |
| 13 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/exists-factorization-of-comp-eq-zero-of-free.md) | 266 | `result-track:0c6a136d1496eafba84b07e56054ecb40afabe7981629671e9728ac09b1573d3` |
| 14 | `theorem` | [exists_factorization_of_isFinitelyPresented](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/exists-factorization-of-isfinitelypresented.md) | 280 | `result-track:5f52f72dc6ebc18f116c61d223bec5409f4fe653e6ad9e88c71c52196a152ca2` |
| 15 | `theorem` | [projective_of_finitePresentation](../../../../CommutativeAlgebra/EquationalCriterionNamespaced.lean/declarations/projective-of-finitepresentation.md) | 294 | `result-track:c280b7a644aa2340afe3b6a9858c316ac00ee3c555f5aa16928626329353eaa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dbc35f18469878304c9d1b0ffb644379032f0961dd335e75aedf7eca6a8d255 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/EquationalCriterion/Variant15637e3984b8c716ac4a440ed3ea19edf95132b82beb619e93136c78a86506a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
