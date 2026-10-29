# Verification target: Damped Divisor Coefficient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd414621b8d768250a22a457c487241ba457914f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variant046c163271033ea56707677f8a7a750fb0bf79f843a43ca540ae3f0dfd0becbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd414621b8d768250a22a457c487241ba457914f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variant046c163271033ea56707677f8a7a750fb0bf79f843a43ca540ae3f0dfd0becbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variant046c163271033ea56707677f8a7a750fb0bf79f843a43ca540ae3f0dfd0becbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/dampeddivisorcoefficient.md) | 12 | `declaration-track:3d65acca485e636a86c1b7e4d110cabafcaf23e2837eb93d2e0412dd1967cb05` |
| 2 | `def` | [damping](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/damping.md) | 15 | `declaration-track:953ef4e67fb749e9c58acf294523f2d89712a2d09d9419639f70e40a922f8efc` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/damping-multiplicative.md) | 18 | `result-track:b12e574c54b6d763be02524566a782c89d9ef6082a52c997b850fdff0b91ef36` |
| 4 | `def` | [divisorFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/divisorfunction.md) | 29 | `declaration-track:42f10e6db454cef87c0aace60ec88ef0413d9802fc7881716d87582488cb634c` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/divisorfunction-apply.md) | 32 | `result-track:ab8ff4bfb3547412b163196837db22c6fc546b30f1307a64ce0bfe66b5d25b99` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/divisorfunction-multiplicative.md) | 42 | `result-track:9f77375eb6361b59606b144c4c2d5cb6f3445985aad54d1888e0a98cd2f099e9` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/divisorfunction-prime-pow.md) | 46 | `result-track:0f6cc33d5e2b62a3125d191d8c2e1b9695eb6560acdbbfd6e8a15c96fe6f397d` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod.md) | 64 | `result-track:ec62c55c3d9ac98b699759f8372235a4331f89b1618bed18e2b181899e390af2` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/dampeddivisorcoefficient-nonneg.md) | 78 | `result-track:b327182c27e1a4c71954aa76f7043ffad9f353b9a6c396b29cfa414fbc32921a` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/dampeddivisorcoefficient-le-one.md) | 90 | `result-track:27e3c39f62c625a075503f205d6a6d2012a8977f8b915a48fdb7a4e22c453247` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/dampeddivisorcoefficient-zero.md) | 102 | `result-track:4dfd66466e181f07a55e3fcb9862bbf53f0230a4513e894c33aa0d9cb20d7ca5` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficient.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff.md) | 112 | `result-track:56c1928484d65d092cc48c4bb4f3877593cdfde9f4fbd6dd82463d5ef34420c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d7a11b5949dcc6a9ca3f054e19818be0888596b7f3e15a1ac9ed1813a77ae6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variant046c163271033ea56707677f8a7a750fb0bf79f843a43ca540ae3f0dfd0becbd.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficient/Variant046c163271033ea56707677f8a7a750fb0bf79f843a43ca540ae3f0dfd0becbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
