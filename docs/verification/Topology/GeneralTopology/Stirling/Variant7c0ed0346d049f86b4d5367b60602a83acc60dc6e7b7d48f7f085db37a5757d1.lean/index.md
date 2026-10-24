# Verification target: GRWTSK.Topology.GeneralTopology.Stirling.Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73f07f03fc8b1a88de24a67f848199a1987b7b6c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73f07f03fc8b1a88de24a67f848199a1987b7b6c`.

Source path: `GRWTSK/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pi.Wallis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/macro-rules--2bc4ada6db04f8b59e759349.md) | 47 | `declaration-track:2bc4ada6db04f8b59e75934961e6e7f939c00ac564362d229957c39642ec1b3e` |
| 2 | `def` | [stirlingSeq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq--8138560593b5eb6aeb220ae9.md) | 60 | `declaration-track:8138560593b5eb6aeb220ae943aab5a5a8a9f423c6b92ebac5d2cdb7a48da988` |
| 3 | `theorem` | [stirlingSeq_zero](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-zero--06ffe7a3a9524e6427d7bdd9.md) | 65 | `result-track:06ffe7a3a9524e6427d7bdd933d2874e796563e951899b00e33da91233479b2d` |
| 4 | `theorem` | [stirlingSeq_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-one--c53e629e48b5fcdc4137bfc8.md) | 71 | `result-track:c53e629e48b5fcdc4137bfc8ff78be606d68b89bfc25f3c519ce4dae53003315` |
| 5 | `theorem` | [log_stirlingSeq_formula](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-formula--02428fd75e33937865bb0fa7.md) | 78 | `result-track:02428fd75e33937865bb0fa7008e4b1ceb0c90944f1e75cc7b02ad1bc0c4a1aa` |
| 6 | `theorem` | [log_stirlingSeq_diff_hasSum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-diff-hassum--2e984598097ca7b5412cc6a2.md) | 86 | `result-track:2e984598097ca7b5412cc6a255a31a91cffab8f47c70bcc5fcc09b72e1042d92` |
| 7 | `theorem` | [log_stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-antitone--1694ba65c8d876318956013c.md) | 109 | `result-track:1694ba65c8d876318956013ca85407c8e497bfadd2af4c3fbda5db3bcd1f2ae8` |
| 8 | `theorem` | [log_stirlingSeq_diff_le_geo_sum](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-diff-le-geo-sum--65557c9bd6987f3208b3acd2.md) | 116 | `result-track:65557c9bd6987f3208b3acd28bb61b84b0f7e28e73ed34e7fbfbc0d672a7505a` |
| 9 | `theorem` | [log_stirlingSeq_sub_log_stirlingSeq_succ](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-sub-log-stirlingseq-succ--e896b9fc8158932036ebf112.md) | 137 | `result-track:e896b9fc8158932036ebf1121395b3fc9f59cdfa33ca78c3aedf1315c713820c` |
| 10 | `theorem` | [log_stirlingSeq_bounded_aux](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-bounded-aux--bd893b33e23922d7036db2dc.md) | 156 | `result-track:bd893b33e23922d7036db2dcf856ca4da24c2e3f3b208b1d4581a2d52004d3bf` |
| 11 | `theorem` | [log_stirlingSeq_bounded_by_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/log-stirlingseq-bounded-by-constant--b0abb04a1e8196d9727be10d.md) | 180 | `result-track:b0abb04a1e8196d9727be10d8e86033cf8f94326dfab8d55ad3c509ef7a167dc` |
| 12 | `theorem` | [stirlingSeq'_pos](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-pos--eff40e6491b1217c776784da.md) | 186 | `result-track:eff40e6491b1217c776784dabb3a2573aebc70c48524a7d85dc63bb3587e861b` |
| 13 | `theorem` | [stirlingSeq'_bounded_by_pos_constant](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-bounded-by-pos-constant--7decc1bba5eb0e318ae375da.md) | 191 | `result-track:7decc1bba5eb0e318ae375dacae00b930748e59b3f0066b2515667f10640e11a` |
| 14 | `theorem` | [stirlingSeq'_antitone](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-antitone--9764aebdab2aa888b25617b7.md) | 199 | `result-track:9764aebdab2aa888b25617b76bdb547454c960c237bfb4e7d89aab27a76d16f2` |
| 15 | `theorem` | [stirlingSeq_has_pos_limit_a](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-has-pos-limit-a--090e381f5d1bd7dd68477e7f.md) | 204 | `result-track:090e381f5d1bd7dd68477e7f8e2a5f14de1de7dd90f55a3cd286955cd4c5d98f` |
| 16 | `theorem` | [tendsto_self_div_two_mul_self_add_one](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/tendsto-self-div-two-mul-self-add-one--fa67f3879befc330083821b8.md) | 219 | `result-track:fa67f3879befc330083821b89010b1c447d96fbdf0e9660ebf4bee1956d453b8` |
| 17 | `theorem` | [stirlingSeq_pow_four_div_stirlingSeq_pow_two_eq](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/stirlingseq-pow-four-div-stirlingseq-pow-two-eq--07f25a58ec31c7248c44ebb2.md) | 234 | `result-track:07f25a58ec31c7248c44ebb29602dd0084d180093e016925c47ec8ad1fc346a0` |
| 18 | `theorem` | [second_wallis_limit](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/second-wallis-limit--f906961948ed1035891d2f46.md) | 247 | `result-track:f906961948ed1035891d2f46871d5fde5136fe1a9252119bdba9d5a411b5e66d` |
| 19 | `theorem` | [tendsto_stirlingSeq_sqrt_pi](../../../../../mathematics/Topology/GeneralTopology/Stirling/Variant7c0ed0346d049f86b4d5367b60602a83acc60dc6e7b7d48f7f085db37a5757d1.lean/declarations/tendsto-stirlingseq-sqrt-pi--602ffd01a1f766ba97e3295c.md) | 260 | `result-track:602ffd01a1f766ba97e3295c5096f679d71e7e10403e0eff21d12ca2c97f8d99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
