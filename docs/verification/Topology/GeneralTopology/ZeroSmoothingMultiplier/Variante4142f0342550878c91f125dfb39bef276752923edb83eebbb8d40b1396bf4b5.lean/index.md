# Verification target: GRWTSK.Topology.GeneralTopology.ZeroSmoothingMultiplier.Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9dfd4959ada89b12192707a30b87392b2920203",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9dfd4959ada89b12192707a30b87392b2920203`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplier](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier--d209164d84147b07fab020a8.md) | 33 | `declaration-track:d209164d84147b07fab020a8a70e81ebb3240957bdcf8a9c0bb80f210af20ac4` |
| 2 | `theorem` | [multiplier_integrand_continuous](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-integrand-continuous--dbbf8f630fe3ff58783975f3.md) | 37 | `result-track:dbbf8f630fe3ff58783975f3080f2540df0011ba306b4a53550ee328ca33cdbb` |
| 3 | `theorem` | [multiplier_integrand_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-integrand-hascompactsupport--adc3be3844ca3adb29b1ece8.md) | 43 | `result-track:adc3be3844ca3adb29b1ece88586b686166ce0c89c8825eba0fa301967d2a761` |
| 4 | `theorem` | [multiplier_integrand_integrable](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-integrand-integrable--9d7d4aeab7f9007b7b5d6d4f.md) | 51 | `result-track:9d7d4aeab7f9007b7b5d6d4f46395da73ee4b47e97762b63d866922cb5072664` |
| 5 | `theorem` | [multiplier_integrand_norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-integrand-norm-le--b54241f2503c9cb2518d379e.md) | 57 | `result-track:b54241f2503c9cb2518d379ebce899e2c5781a06e83176da207e9b228e0aacee` |
| 6 | `theorem` | [multiplier_norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-norm-le--f7e465fe1cb2a5b76e10a534.md) | 77 | `result-track:f7e465fe1cb2a5b76e10a534ed55d1e917fcd285ebaf1c65b2f0cc3ccaec112c` |
| 7 | `theorem` | [multiplier_norm_le_strip](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-norm-le-strip--86168bfeca5ae909d6125e29.md) | 90 | `result-track:86168bfeca5ae909d6125e29e4da5edcb6eb500b6a89a76cc7b76b6fba6c9bab` |
| 8 | `theorem` | [multiplier_norm_le_zeroOccurrence](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-norm-le-zerooccurrence--496fb6970a99edba7a8f0bcd.md) | 98 | `result-track:496fb6970a99edba7a8f0bcd0e5a08607de8b4d85e52c9199cba5b4a3db84d96` |
| 9 | `theorem` | [multiplier_zero](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-zero--e651be4cf0110a43f104166c.md) | 104 | `result-track:e651be4cf0110a43f104166cd67ee1442686b2becaf263fe9e5a5778f0592c93` |
| 10 | `theorem` | [multiplier_eq_convolution](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-eq-convolution--57c6b32761bc704fe6ffb0ee.md) | 109 | `result-track:57c6b32761bc704fe6ffb0ee750a6be812b3e00569a6eb16ddb8b2e24ca98093` |
| 11 | `theorem` | [multiplier_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variante4142f0342550878c91f125dfb39bef276752923edb83eebbb8d40b1396bf4b5.lean/declarations/multiplier-tendsto-one--be0c6fb6d84ad1e1dab9e27c.md) | 121 | `result-track:be0c6fb6d84ad1e1dab9e27cb9ef7f56192bcf0ddede51bcdd0452009881032b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
