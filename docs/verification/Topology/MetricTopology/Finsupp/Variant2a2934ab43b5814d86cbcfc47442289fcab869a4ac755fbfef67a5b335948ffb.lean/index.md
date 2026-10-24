# Verification target: GRWTSK.Topology.MetricTopology.Finsupp.Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f93f3a965688abee426b1ac5f5568edec62efc39",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f93f3a965688abee426b1ac5f5568edec62efc39`.

Source path: `GRWTSK/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalities` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Basic.ENNReal.BigOperators` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/instance--3aaa13b9164321c35fe1f284.md) | 39 | `declaration-track:3aaa13b9164321c35fe1f28433cd2ffb672a1e7114222be7c40c2e03e6bfb8dc` |
| 2 | `lemma` | [edist_def](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/edist-def--b94afe36e259470ba92d7b35.md) | 62 | `result-track:b94afe36e259470ba92d7b3560a23d1e52cd22461ba13ace24a841bd27643767` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/instance--50e58d47904ba01eb4fdf493.md) | 68 | `declaration-track:50e58d47904ba01eb4fdf4933fb5c4857c72f77d05eb1c519365d57ce5c028fa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/instance--977aae1ffd5d516d1cc4d42b.md) | 72 | `declaration-track:977aae1ffd5d516d1cc4d42b1ac3997bf268c2036491aabfa35fd16c1118823c` |
| 5 | `lemma` | [dist_def](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/dist-def--de92ae84a538135c3219006b.md) | 83 | `result-track:de92ae84a538135c3219006b3f56dd702241e2192f7ccaed6976c35314064c9b` |
| 6 | `lemma` | [nndist_def](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/nndist-def--a6d3cc7891fd8507561cf16b.md) | 87 | `result-track:a6d3cc7891fd8507561cf16b7137e8b318878409e48540f38a7cc52d28b3b8c0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb.lean/declarations/instance--c1e14a03dd318d49b88b7888.md) | 97 | `declaration-track:c1e14a03dd318d49b88b78889061badac5f6156218d8aba9250850847fc54ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
