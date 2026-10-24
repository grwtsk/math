# Verification target: GRWTSK.Topology.GeneralTopology.Wallis.Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d775ea95ecb5696c447a7663b0f2c09dad5138",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d775ea95ecb5696c447a7663b0f2c09dad5138`.

Source path: `GRWTSK/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/w--1d2d0bea8f52654dbc43bcbe.md) | 43 | `declaration-track:1d2d0bea8f52654dbc43bcbea6fb0f35a0ec49334c01d598a20ec9dff73cc51a` |
| 2 | `theorem` | [W_succ](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/w-succ--3101d5968c7edc4155314b31.md) | 46 | `result-track:3101d5968c7edc4155314b312284e184178f621e309f319dcc90a2982b29e400` |
| 3 | `theorem` | [W_pos](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/w-pos--32760e13a788bca0ca715284.md) | 50 | `result-track:32760e13a788bca0ca715284f7c8724f13301dd6259b832677836b27707103f7` |
| 4 | `theorem` | [W_eq_factorial_ratio](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/w-eq-factorial-ratio--0a0b3a16e13a38c19dfdd0f7.md) | 56 | `result-track:0a0b3a16e13a38c19dfdd0f78953635af64df346a80bbcfad25f7686f9a110c2` |
| 5 | `theorem` | [W_eq_integral_sin_pow_div_integral_sin_pow](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/w-eq-integral-sin-pow-div-integral-sin-pow--b5d48a53b9ed91218bfe4175.md) | 71 | `result-track:b5d48a53b9ed91218bfe4175f8ba158a3da151affd4a5bf799c745839fee9979` |
| 6 | `theorem` | [W_le](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/w-le--3830e418e0e3136c22699a0b.md) | 77 | `result-track:3830e418e0e3136c22699a0b42436e4c756297c989576a1f2dd072d500139040` |
| 7 | `theorem` | [le_W](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/le-w--06d9925c058fc7ba473ee20c.md) | 82 | `result-track:06d9925c058fc7ba473ee20c4a6a84744652386780d9839f07123b77a921cdde` |
| 8 | `theorem` | [tendsto_W_nhds_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/tendsto-w-nhds-pi-div-two--b286bd6e48d69aef9e0338b3.md) | 89 | `result-track:b286bd6e48d69aef9e0338b3f72d2e38269948a936774fc003b494cbd2bfbf43` |
| 9 | `theorem` | [Real.tendsto_prod_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Wallis/Variant427e2a16690c6192ba0d19e3c209320caca49a654d3be7c4e884dfdbded87e96.lean/declarations/real-tendsto-prod-pi-div-two--54a902db5dca274e0351b4ad.md) | 109 | `result-track:54a902db5dca274e0351b4ad172fbd2d8712a5040f9379a1e41df81e57b51c97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
