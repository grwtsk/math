# Verification target: GRWTSK.Topology.GeneralTopology.Wallis.Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb82347a1d73a9cff822b1f851ccba6b6c2adfe3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb82347a1d73a9cff822b1f851ccba6b6c2adfe3`.

Source path: `GRWTSK/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/w--c35cb56b2b692ee9fb1dde9c.md) | 51 | `declaration-track:c35cb56b2b692ee9fb1dde9c17081611fcffe636ac44b86b2e53c0869d210190` |
| 2 | `theorem` | [W_succ](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/w-succ--b646df42c81654c14e7f55f5.md) | 54 | `result-track:b646df42c81654c14e7f55f5e3f596fed118a737ca179c4a3d918c688443aef5` |
| 3 | `theorem` | [W_pos](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/w-pos--e6dd197259f96d4bb5f56f21.md) | 58 | `result-track:e6dd197259f96d4bb5f56f2197175a8ee259714961dc5a696d9343fed14c1193` |
| 4 | `theorem` | [W_eq_factorial_ratio](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/w-eq-factorial-ratio--6f88daeff0c3b72da8989a26.md) | 64 | `result-track:6f88daeff0c3b72da8989a26c86bc06b583520b6a45943768f3bcad858cf2c58` |
| 5 | `theorem` | [W_eq_integral_sin_pow_div_integral_sin_pow](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/w-eq-integral-sin-pow-div-integral-sin-pow--c6ed0aef2578070b405f673a.md) | 79 | `result-track:c6ed0aef2578070b405f673a778e87a600d0864ccaa3e950541784fc085d3745` |
| 6 | `theorem` | [W_le](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/w-le--abfe5dc58d10faa198e6eff4.md) | 85 | `result-track:abfe5dc58d10faa198e6eff4bce59843982a87d0a5a6683c077a985458294832` |
| 7 | `theorem` | [le_W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/le-w--d7d08ea93e5a7a7ade02d790.md) | 90 | `result-track:d7d08ea93e5a7a7ade02d7904c96935de58ab189af98a82faf12be04d897c364` |
| 8 | `theorem` | [tendsto_W_nhds_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/tendsto-w-nhds-pi-div-two--5d6b317b3752248a63885717.md) | 97 | `result-track:5d6b317b3752248a638857177837e18d8e484f3cf444b7432a4e55b7ad3ff6c0` |
| 9 | `theorem` | [Real.tendsto_prod_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variante9a0e9c78637f0e2f520e084e40a380c51947dc5898bbe29df6abebc43cf88a4.lean/declarations/real-tendsto-prod-pi-div-two--4d60dd467806c28fc68d90a8.md) | 117 | `result-track:4d60dd467806c28fc68d90a87514b18c6eca48ef2775868ff5cb323704bcf254` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
