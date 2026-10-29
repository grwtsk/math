# Verification target: Orzech

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2691ddbafd1251477dda3048a9294dc60b67ebcc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orzech/Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2691ddbafd1251477dda3048a9294dc60b67ebcc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orzech/Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orzech/Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.IterateMapComap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PartialSups` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OrzechProperty` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNoetherian.injective_of_surjective_of_injective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/isnoetherian-injective-of-surjective-of-injective.md) | 40 | `result-track:00ca335cce4e13f574bc1e459d950eeac508d8af832878ce4c589491e08dd10a` |
| 2 | `theorem` | [IsNoetherian.injective_of_surjective_of_submodule](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/isnoetherian-injective-of-surjective-of-submodule.md) | 51 | `result-track:477f5acbdbd6b827d01c99abd1480c415ac11e04cdebf5ccc73e9be6344d2fc3` |
| 3 | `theorem` | [IsNoetherian.injective_of_surjective_endomorphism](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/isnoetherian-injective-of-surjective-endomorphism.md) | 56 | `result-track:13bf99287073bcd97dc64b476c683c7c44d9dde57dcf575a38a95c85e5125d92` |
| 4 | `theorem` | [IsNoetherian.bijective_of_surjective_endomorphism](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/isnoetherian-bijective-of-surjective-endomorphism.md) | 61 | `result-track:3be9754f5909466c720b58010e57828b09dc446aa0788fe0dc9638cd5d658dcd` |
| 5 | `theorem` | [IsNoetherian.subsingleton_of_prod_injective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/isnoetherian-subsingleton-of-prod-injective.md) | 66 | `result-track:f2d5d67c8a5f4cb31bebe1f5b7df1fca93c662576a32c17702f2f76920ee7f59` |
| 6 | `def` | [IsNoetherian.equivPUnitOfProdInjective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/isnoetherian-equivpunitofprodinjective.md) | 73 | `declaration-track:2f1dfb14a679c2c50c1370994e1aefe116e0e93bf9f4ab1ac24283c7a9ca625d` |
| 7 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/Orzech.lean/declarations/instance.md) | 83 | `declaration-track:dbe3a8a93d5a130843ccebee193a06ad013c8a8b85d3e460ce46625743418438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dca53a672b1377a4dd53304e262afcdc391e3a3135e74e6c7b0d77386cf553a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orzech/Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Orzech/Variant0afb78d052f1a51711f9df8e76285ed3a9d9e54d86733767aba6e7141c62215d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
