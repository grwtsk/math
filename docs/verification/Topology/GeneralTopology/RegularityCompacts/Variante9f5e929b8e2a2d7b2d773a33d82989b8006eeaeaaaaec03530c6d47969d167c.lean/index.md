# Verification target: GRWTSK.Topology.GeneralTopology.RegularityCompacts.Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33bd25384eb2abe88ef3f47a23b70756efe52abc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33bd25384eb2abe88ef3f47a23b70756efe52abc`.

Source path: `GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Polish` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [innerRegularWRT_isCompact_closure_iff](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-closure-iff--54e236d7bbcbeee9587a9807.md) | 41 | `result-track:54e236d7bbcbeee9587a9807760649844e4fd0830004af8bb0c72c74ef9b12ff` |
| 2 | `lemma` | [innerRegularWRT_isCompact_isClosed_iff_innerRegularWRT_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-isclosed-iff-innerregularwrt-iscompact-closure--2b60e08db4f0e9a49d319a05.md) | 51 | `result-track:2b60e08db4f0e9a49d319a05c293aa7c6ab5f6cbc89d08fc716af1102b2db62b` |
| 3 | `lemma` | [innerRegularWRT_isCompact_isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-isclosed-iff--98cb8fa04f648d6d42b94026.md) | 65 | `result-track:98cb8fa04f648d6d42b94026606990c9fed641d0b6ac3da76780c48ccf6577c9` |
| 4 | `theorem` | [innerRegularWRT_of_exists_compl_lt](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-of-exists-compl-lt--cdd5f7bda88a2c770132339f.md) | 76 | `result-track:cdd5f7bda88a2c770132339fd080e379cd9c1dfd62f1b9e5247c312b2d68e76e` |
| 5 | `theorem` | [innerRegularWRT_isCompact_closure_of_univ](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-closure-of-univ--d1283cb453523dc42eedde27.md) | 89 | `result-track:d1283cb453523dc42eedde2728c8e4804d1a5f22f1275b51bae141f8ef39fa15` |
| 6 | `theorem` | [exists_isCompact_closure_measure_compl_lt](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/exists-iscompact-closure-measure-compl-lt--b87d2f3af2f30f6934043aa1.md) | 98 | `result-track:b87d2f3af2f30f6934043aa19fb18719eb14d1c7f62c82f0e05f259ac740023f` |
| 7 | `theorem` | [innerRegularWRT_isCompact_closure](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-closure--96860ad344c929c5e8c59ace.md) | 138 | `result-track:96860ad344c929c5e8c59aceb28c38ff6a87aa863f44bed9887b1b9a8721efca` |
| 8 | `theorem` | [innerRegularWRT_isCompact_isClosed](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-isclosed--ba830e7bbd2a7f1cb305ecdf.md) | 145 | `result-track:ba830e7bbd2a7f1cb305ecdfc99c4c1b06f98fa1b8693dc5932a37c6a68df7f4` |
| 9 | `theorem` | [innerRegularWRT_isCompact](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact--36c94d7a60f23ef82e08932d.md) | 152 | `result-track:36c94d7a60f23ef82e08932dbf16d0c207ba6a3eed7c07e57bd20cf0cc143896` |
| 10 | `theorem` | [innerRegularWRT_isCompact_isClosed_isOpen](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-isclosed-isopen--e7cd722f880e631c79541557.md) | 159 | `result-track:e7cd722f880e631c795415576eb81189e87fefb4d6b7f9724fe91cf422dffcd3` |
| 11 | `theorem` | [innerRegularWRT_isCompact_isOpen](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularwrt-iscompact-isopen--cae2b0642fbd32dd48d42b46.md) | 166 | `result-track:cae2b0642fbd32dd48d42b46af8ad55e6450032762f96d2b9cdd089193a745b7` |
| 12 | `instance` | [InnerRegular_of_pseudoEMetricSpace_completeSpace_secondCountable](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregular-of-pseudoemetricspace-completespace-secondcountable--e5f61774760690844d406ce2.md) | 178 | `declaration-track:e5f61774760690844d406ce226a7709815314f5afc96fc647a52eb9b9149659b` |
| 13 | `instance` | [InnerRegular_of_polishSpace](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregular-of-polishspace--cf5045d97c644ef4a293fd7d.md) | 191 | `declaration-track:cf5045d97c644ef4a293fd7de035c9367d7e97e5d386f55e8295a63d657f7e64` |
| 14 | `instance` | [InnerRegularCompactLTTop_of_pseudoEMetricSpace_completeSpace_secondCountable](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularcompactlttop-of-pseudoemetricspace-completespace-secondcount--e41d346bdcf7cfe875f13c50.md) | 201 | `declaration-track:e41d346bdcf7cfe875f13c500486c1f1bbb7840930c6bbd4c47c5f0d664fd52c` |
| 15 | `instance` | [InnerRegularCompactLTTop_of_polishSpace](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregularcompactlttop-of-polishspace--56237ffc4a11051720f38782.md) | 221 | `declaration-track:56237ffc4a11051720f38782617d5b119338358f84e01b9908974e4f39326aed` |
| 16 | `theorem` | [innerRegular_isCompact_isClosed_measurableSet_of_finite](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/innerregular-iscompact-isclosed-measurableset-of-finite--466a3069453621f82b2b8fe2.md) | 227 | `result-track:466a3069453621f82b2b8fe25d8bbe66195e34832230acefb6ca6fde1dab19f3` |
| 17 | `theorem` | [PolishSpace.innerRegular_isCompact_isClosed_measurableSet](../../../../../mathematics/Topology/GeneralTopology/RegularityCompacts/Variante9f5e929b8e2a2d7b2d773a33d82989b8006eeaeaaaaec03530c6d47969d167c.lean/declarations/polishspace-innerregular-iscompact-isclosed-measurableset--6c48c962c8f76c7e7d05818e.md) | 247 | `result-track:6c48c962c8f76c7e7d05818e765ed102312921e2ce8bff4ab35b88b6b1fde8c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
