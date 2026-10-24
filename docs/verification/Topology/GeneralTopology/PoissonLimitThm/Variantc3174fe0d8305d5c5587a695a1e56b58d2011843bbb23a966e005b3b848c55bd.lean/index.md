# Verification target: GRWTSK.Topology.GeneralTopology.PoissonLimitThm.Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a7cfd73464fe4e3392dd21a053e94b591b8848d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a7cfd73464fe4e3392dd21a053e94b591b8848d`.

Source path: `GRWTSK/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Choose` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_zero_of_tendsto_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/declarations/tendsto-zero-of-tendsto-mul-attop--9fb4919573418b164ce1a7de.md) | 55 | `result-track:9fb4919573418b164ce1a7de94aeffe4f5ab53780730b8d539587e8f4bfcfbbb` |
| 2 | `lemma` | [tendsto_choose_mul_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/declarations/tendsto-choose-mul-pow-attop--7bee8bfff8f2d8b7fcd79968.md) | 63 | `result-track:7bee8bfff8f2d8b7fcd79968c561cc5217c3f5a975e7add98de56b7521d78bc0` |
| 3 | `theorem` | [tendsto_choose_mul_pow_of_tendsto_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/declarations/tendsto-choose-mul-pow-of-tendsto-mul-attop--a7e7d7c9844932819bb95607.md) | 78 | `result-track:a7e7d7c9844932819bb956070177d0b8ebb584d0ee7d869bdcc1929708d02bdb` |
| 4 | `lemma` | [binomial_tendsto_poissonPMFReal_atTop](../../../../../mathematics/Topology/GeneralTopology/PoissonLimitThm/Variantc3174fe0d8305d5c5587a695a1e56b58d2011843bbb23a966e005b3b848c55bd.lean/declarations/binomial-tendsto-poissonpmfreal-attop--0aae98b8312de0f247b7475a.md) | 102 | `result-track:0aae98b8312de0f247b7475a74b06453e39924ed04f78c1e7d4e01d8cfcfc553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
