# Verification target: Discrete Valuation Ring Namespaced Discrete Valuation Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8280eb963e2b1d7ffde11cb0c0b9b28c979d0e81",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8280eb963e2b1d7ffde11cb0c0b9b28c979d0e81`.

Source path: `GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Domain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulCoeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/macro-rules.md) | 41 | `declaration-track:b139ecb226d6fc8fe445ac0fc459d5737cd4894f95ecc156cb16b3679417eccb` |
| 2 | `def` | [succNthValUnits](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/succnthvalunits.md) | 54 | `declaration-track:95ed7028b46b1e704f91de25b9e1aa168da624b8f47721654bec92e554137d5f` |
| 3 | `def` | [inverseCoeff](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/inversecoeff.md) | 63 | `declaration-track:10a89e06ce6458ec5dcf8955328642069a46acd87c1bca8b13452cd28a3d0320` |
| 4 | `def` | [mkUnit](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/mkunit.md) | 71 | `declaration-track:0560baa01f790e62ff7348ce51c81dec884a6015b58361e9b72cfc2970ea0fc6` |
| 5 | `theorem` | [coe_mkUnit](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/coe-mkunit.md) | 88 | `result-track:775cb36b569eb6d59491f250aa76ab281f8e358f650f02f13b44a61e51980753` |
| 6 | `theorem` | [isUnit_of_coeff_zero_ne_zero](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/isunit-of-coeff-zero-ne-zero.md) | 98 | `result-track:2347dfe51522b843dbbb2eb323ab26f21d15ecf7057d1b63487edbc2b723b4b0` |
| 7 | `theorem` | [irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/irreducible.md) | 106 | `result-track:5089033628261c13216e8ce0c7a29db25a05e09ea3aa087fcf71268446c50cef` |
| 8 | `theorem` | [exists_eq_pow_p_mul](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/exists-eq-pow-p-mul-source-edition-2.md) | 131 | `result-track:28617ecb21fe93954beeedbca6ebe9ee6740af2c76d90b42b8df6fa2e09f4da2` |
| 9 | `theorem` | [exists_eq_pow_p_mul'](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/exists-eq-pow-p-mul.md) | 155 | `result-track:101bca11b04acbb4d5a97eba80c3e8766966888634983f7414363cc33ccf5fb2` |
| 10 | `theorem` | [discreteValuationRing](../../../../CommutativeAlgebra/DiscreteValuationRingNamespacedDiscreteValuationRing.lean/declarations/discretevaluationring.md) | 171 | `result-track:a0df143afb35ffb77a7ac037571c0b95deccd4fbf47e0545c299fb4cef8aca97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ec923d75bca8946bda43b0886542292b98cc5cc77597a750fd31e53ebc09b43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean","GRWTSK/_verification/specifications/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
