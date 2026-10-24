# Verification target: GRWTSK.Topology.GeneralTopology.UnnormalizedDilationAttempt02.Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728e144570da1221cebb6e9b4a40c414e55977e7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728e144570da1221cebb6e9b4a40c414e55977e7`.

Source path: `GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ClosedSubmodule` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unnormalizedFunc](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/unnormalizedfunc--3bb0305cec08fa3718a82c77.md) | 13 | `declaration-track:3bb0305cec08fa3718a82c77cd9a6345a8b1bb0e05433901af694dcdb5d5a5c2` |
| 2 | `theorem` | [unnormalizedFunc_memLp](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/unnormalizedfunc-memlp--aec939567c2f15b91726428d.md) | 15 | `result-track:aec939567c2f15b91726428df34bc23240966574cbd67211365069ebe108ae54` |
| 3 | `def` | [unnormalized](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/unnormalized--b3ee3f7d60970eba9a544ab8.md) | 22 | `declaration-track:b3ee3f7d60970eba9a544ab8a1255c821528cc409b2234993bcb1499fa695cd3` |
| 4 | `theorem` | [unnormalized_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/unnormalized-ae--a7b6ce89f3579205316742e0.md) | 25 | `result-track:a7b6ce89f3579205316742e0265a092a178f5217f092f6860380838e5b131315` |
| 5 | `theorem` | [dilate_eq_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/dilate-eq-sqrt-smul--89b1c10696aff8e88099d6b5.md) | 29 | `result-track:89b1c10696aff8e88099d6b5ebba4a5d314d7cc44364afdb18b598a1ba668180` |
| 6 | `theorem` | [unnormalized_eq_inv_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/unnormalized-eq-inv-sqrt-smul--518a6fc0387c94fcc41d324e.md) | 38 | `result-track:518a6fc0387c94fcc41d324e8493527aa1a1497800185caf14319fbcef732754` |
| 7 | `theorem` | [unnormalized_norm](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/unnormalized-norm--ab84fc71fc99e279abc40edb.md) | 43 | `result-track:ab84fc71fc99e279abc40edb5fe5a860f902b335bac331ca02b04837463c630d` |
| 8 | `theorem` | [span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/span-range-eq--f2714e4cf41c1165313bd81d.md) | 48 | `result-track:f2714e4cf41c1165313bd81df85534212856da3fc96ebc6dcf1f54cd03cf3d63` |
| 9 | `theorem` | [closure_span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/closure-span-range-eq--55e295c95b1306c7f3dfebb3.md) | 63 | `result-track:55e295c95b1306c7f3dfebb3814dca34c5a873afc4fa2b3d44848fd5ab608440` |
| 10 | `def` | [actualIntegerOrbit](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/actualintegerorbit--a8618c09b9f499253e5534a0.md) | 68 | `declaration-track:a8618c09b9f499253e5534a0ac83931e89c7e6ad821a7738901aaca589813fe1` |
| 11 | `theorem` | [actualIntegerOrbit_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/actualintegerorbit-ae--cc88956add2ad2acb32fab69.md) | 71 | `result-track:cc88956add2ad2acb32fab69d688e2fb1c7b9d04d25f062b213700f5b2b99750` |
| 12 | `theorem` | [actual_integer_span_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/actual-integer-span-eq--fe0ce71475de1607a1bf3209.md) | 80 | `result-track:fe0ce71475de1607a1bf320965e80c7a3fe0803b197e2ef0cfc84bf736c44545` |
| 13 | `theorem` | [actual_integer_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/actual-integer-closure-eq--bd6431c86dc66451855a8ebf.md) | 86 | `result-track:bd6431c86dc66451855a8ebf064e3c33fcfc0952335a8a9227927aa855a1e4fa` |
| 14 | `theorem` | [actual_continuous_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variantbe417d077bc8da60fd925d17ef6fe794dc4b14fe318bbfcb8831c23166b0c4e9.lean/declarations/actual-continuous-closure-eq--e1714a6ee108c7c32971b109.md) | 91 | `result-track:e1714a6ee108c7c32971b10909df51cf7a8bf3dda280071656a0c2473857bc25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
