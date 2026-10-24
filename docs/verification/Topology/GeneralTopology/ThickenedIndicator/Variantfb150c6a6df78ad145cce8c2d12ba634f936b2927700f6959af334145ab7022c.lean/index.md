# Verification target: GRWTSK.Topology.GeneralTopology.ThickenedIndicator.Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8bd42ea7c333fe63090fe2f6f3420558ea12fce",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8bd42ea7c333fe63090fe2f6f3420558ea12fce`.

Source path: `GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux--8aef10f51b55b8a789fe040f.md) | 48 | `declaration-track:8aef10f51b55b8a789fe040f364c65c7126d24ed07eed0c5917f1e22d7f2dcdd` |
| 2 | `theorem` | [continuous_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/continuous-thickenedindicatoraux--14db0a8dc16d57c117830b5a.md) | 51 | `result-track:14db0a8dc16d57c117830b5a7613e6dd2148ca8020b2de10d9956246d493e68a` |
| 3 | `theorem` | [thickenedIndicatorAux_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-le-one--7d00f123fc08b028d12b695a.md) | 61 | `result-track:7d00f123fc08b028d12b695a476cbc3810918073c0749a2e2f48825768cd1910` |
| 4 | `theorem` | [thickenedIndicatorAux_lt_top](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-lt-top--d8fec721123ce5904b40e5ce.md) | 65 | `result-track:d8fec721123ce5904b40e5ce9105108f108fedc9ec2f041663d5d0dcbffc9c00` |
| 5 | `theorem` | [thickenedIndicatorAux_closure_eq](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-closure-eq--7565bf05110887ea27dd075a.md) | 69 | `result-track:7565bf05110887ea27dd075ae661c92cabc2fe5c6c55b95180569619e87ed06b` |
| 6 | `theorem` | [thickenedIndicatorAux_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-one--fcddf67e5b6ee39d7b629049.md) | 73 | `result-track:fcddf67e5b6ee39d7b629049ba5077ce20ca52873a4942d389050db06347acf4` |
| 7 | `theorem` | [thickenedIndicatorAux_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-one-of-mem-closure--fe318d925fdb90f4f59c3624.md) | 77 | `result-track:fe318d925fdb90f4f59c3624df52904d58b4095dfb816fe86ad40b84969967fa` |
| 8 | `theorem` | [thickenedIndicatorAux_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-zero--8f7724cdb0db5bfd7dd5c142.md) | 81 | `result-track:8f7724cdb0db5bfd7dd5c142701657972662d705ab2ac852c9fb8cb803d50155` |
| 9 | `theorem` | [thickenedIndicatorAux_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-mono--7b8f322190773386e3580a5c.md) | 91 | `result-track:7b8f322190773386e3580a5c43314c128dabae87ac88e00c32bb76acc7712d1a` |
| 10 | `theorem` | [indicator_le_thickenedIndicatorAux](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/indicator-le-thickenedindicatoraux--7a682df6cc06360105388289.md) | 95 | `result-track:7a682df6cc06360105388289f9df9dbf95897e35f8206f2d378842c7ddfea775` |
| 11 | `theorem` | [thickenedIndicatorAux_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-subset--47934e6bba09f2f79b3950e5.md) | 102 | `result-track:47934e6bba09f2f79b3950e5c2086c728689419850867f3359580f369df3243e` |
| 12 | `theorem` | [thickenedIndicatorAux_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicatoraux-tendsto-indicator-closure--4a6c5bc28fbd0cb797b77b1b.md) | 113 | `result-track:4a6c5bc28fbd0cb797b77b1b37f5401e65f11e61974170128efe9f5572ae69e1` |
| 13 | `def` | [thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator--47440006fbec77a763bb2ace.md) | 145 | `declaration-track:47440006fbec77a763bb2acefa866317ef1d9760b5f3a021c481e295556b9873` |
| 14 | `theorem` | [thickenedIndicator.coeFn_eq_comp](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-coefn-eq-comp--6d2102549f490042551e12a8.md) | 163 | `result-track:6d2102549f490042551e12a8a6fb64c047fda4e6cdd6a0a4f32d1a8cf703635d` |
| 15 | `theorem` | [thickenedIndicator_le_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-le-one--62f08f70bdb577f401d0b0fb.md) | 167 | `result-track:62f08f70bdb577f401d0b0fb5eee8121989c99e1fd34584164434c6216068887` |
| 16 | `theorem` | [thickenedIndicator_one_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-one-of-mem-closure--b82de814545077d90001a810.md) | 173 | `result-track:b82de814545077d90001a81035e0ec25ac1a4093a9f51438b9c88dd751bda6d9` |
| 17 | `lemma` | [one_le_thickenedIndicator_apply'](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/one-le-thickenedindicator-apply--0000321d1d26be0c6bd2f969.md) | 177 | `result-track:0000321d1d26be0c6bd2f9691f572d57e4349b5f470fe0a1dd0d5ee4ce2824ad` |
| 18 | `lemma` | [one_le_thickenedIndicator_apply](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/one-le-thickenedindicator-apply--a8a5893686ba3c0ad64ae88b.md) | 182 | `result-track:a8a5893686ba3c0ad64ae88b8a80cc7062c9339d0a8d83b27710f3608d080d71` |
| 19 | `theorem` | [thickenedIndicator_one](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-one--34bd3043fbfa0625cba58b86.md) | 187 | `result-track:34bd3043fbfa0625cba58b86bb6e5954c8ec449425634360c840a57bd49f3198` |
| 20 | `theorem` | [thickenedIndicator_zero](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-zero--7a40f2c2477a78cc8f05cf71.md) | 191 | `result-track:7a40f2c2477a78cc8f05cf71999be7550d0c21e98ba6a35254d20168479bd13b` |
| 21 | `theorem` | [indicator_le_thickenedIndicator](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/indicator-le-thickenedindicator--c66af0220ef5ec492a8eda7c.md) | 195 | `result-track:c66af0220ef5ec492a8eda7c6c1407006f9c2201a8a5ef83d4960f86723bcffa` |
| 22 | `theorem` | [thickenedIndicator_mono](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-mono--26154ee25723cc9d4a707080.md) | 202 | `result-track:26154ee25723cc9d4a707080babe562ec9f94525729349b73cd755b7185bb204` |
| 23 | `theorem` | [thickenedIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-subset--511509a8324aaedc5a385edd.md) | 208 | `result-track:511509a8324aaedc5a385edd53875fea3ec4737477fa69f4ae064901f2723dac` |
| 24 | `theorem` | [thickenedIndicator_tendsto_indicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/thickenedindicator-tendsto-indicator-closure--c3a495b13e11f507ce1b1b1e.md) | 219 | `result-track:c3a495b13e11f507ce1b1b1ea3291d1b6c4e4684c75420eb6ae7e30be03cfca0` |
| 25 | `lemma` | [mulIndicator_thickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/mulindicator-thickening-eventually-eq-mulindicator-closure--fdc5dfa4d59c7cc3c4fde58c.md) | 242 | `result-track:fdc5dfa4d59c7cc3c4fde58cf9ddfee16af06f64dc2fae6ec2a68946a5f2c04d` |
| 26 | `lemma` | [mulIndicator_cthickening_eventually_eq_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/mulindicator-cthickening-eventually-eq-mulindicator-closure--daf8571379a6e7bb73734e4c.md) | 257 | `result-track:daf8571379a6e7bb73734e4c909b95fc61bb7598937847de9c291cda70edf646` |
| 27 | `lemma` | [tendsto_mulIndicator_thickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/tendsto-mulindicator-thickening-mulindicator-closure--db8f74ae96b4bd4e1e2c438d.md) | 273 | `result-track:db8f74ae96b4bd4e1e2c438daec6518b6944dcec79a9993223819aa50851876d` |
| 28 | `lemma` | [tendsto_mulIndicator_cthickening_mulIndicator_closure](../../../../../mathematics/Topology/GeneralTopology/ThickenedIndicator/Variantfb150c6a6df78ad145cce8c2d12ba634f936b2927700f6959af334145ab7022c.lean/declarations/tendsto-mulindicator-cthickening-mulindicator-closure--66d678319d9ae3113b44ae74.md) | 285 | `result-track:66d678319d9ae3113b44ae74e79f3b0625b9d5b7ee94a72226a937b69ebf970d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
