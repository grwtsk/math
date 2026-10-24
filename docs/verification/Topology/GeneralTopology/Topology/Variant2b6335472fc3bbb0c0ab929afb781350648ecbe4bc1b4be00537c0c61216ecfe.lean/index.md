# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43968ea7262c8dcaef820d885ee5edd6fd2982ee",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43968ea7262c8dcaef820d885ee5edd6fd2982ee`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Maximal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toPrimeSpectrum_range](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/declarations/toprimespectrum-range--83f07dda796d1c29c35ad3e6.md) | 39 | `result-track:83f07dda796d1c29c35ad3e6bd7ec4ca8c06a6196ddc5ed0656ed04fc781082c` |
| 2 | `instance` | [zariskiTopology](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/declarations/zariskitopology--e45eac068d4cdeb08a3c3af0.md) | 47 | `declaration-track:e45eac068d4cdeb08a3c3af05adb45177c17584fdb20b0a836ac07c045e28b64` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/declarations/instance--aeac1daf27745f0cb101b063.md) | 50 | `declaration-track:aeac1daf27745f0cb101b063869b85db092588f3fc99bd7fc853979e8fa292b0` |
| 4 | `theorem` | [toPrimeSpectrum_continuous](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/declarations/toprimespectrum-continuous--62bd48714618acee8985e7df.md) | 55 | `result-track:62bd48714618acee8985e7df94308da63ed0e597462906491a2264372d38b851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
