# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.FiniteAdelicState.Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbdb5beca9bfa4992aa8ac8ce9af1d4e398ca806`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Prismatic.CyclotomicComparison` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.PrimeIndexCategory` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAdelicState](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/finiteadelicstate--9a323e0e016c2e94b88dfdfe.md) | 23 | `declaration-track:9a323e0e016c2e94b88dfdfe0a8e9a86323952930bce0cba3be7c6f38b4e5fe1` |
| 2 | `structure` | [RestrictedAdelicCompletion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/restrictedadeliccompletion--ce4b95ad590ef6406197c7a6.md) | 46 | `declaration-track:ce4b95ad590ef6406197c7a6228862996d95a3cd7bd8b4c4cf322bf102679adc` |
| 3 | `instance` | [completionUniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/completionuniformspace--1aa65164e9d268af10872918.md) | 59 | `declaration-track:1aa65164e9d268af10872918b48bd4f21fe32a5cf8719371b1b0ea370dfa9355` |
| 4 | `instance` | [completionCompleteSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/completioncompletespace--2bbe87712fea4d4bf0598f0c.md) | 65 | `declaration-track:2bbe87712fea4d4bf0598f0cb3d0776497fbaa8ae271e63e7aec9669ac7df22a` |
| 5 | `instance` | [completionT0Space](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/completiont0space--a48b65f8581874aa8f38175d.md) | 71 | `declaration-track:a48b65f8581874aa8f38175d1297fbe6a90e56312483c93eea2d8b7dab12816a` |
| 6 | `def` | [finiteEmbedding](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/finiteembedding--e407441a413d43bd09066ab0.md) | 77 | `declaration-track:e407441a413d43bd09066ab0309eefde4157c87786b9240f99b86b5a8dbc462d` |
| 7 | `def` | [representedPoint](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/representedpoint--a8a191dcd596e14f44769010.md) | 86 | `declaration-track:a8a191dcd596e14f44769010a3b4cec7cf3f26e4256df81f238ab7c0876c5c54` |
| 8 | `def` | [IsRestrictedAdelicPoint](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/isrestrictedadelicpoint--abc4c64761749a24e4519627.md) | 96 | `declaration-track:abc4c64761749a24e4519627598402804bdc9d8bb183dc01dc7222d162fdd110` |
| 9 | `theorem` | [finiteEmbedding_dense](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/finiteembedding-dense--4027e0416575c48dcbefdae3.md) | 102 | `result-track:4027e0416575c48dcbefdae34bd999e3cd77fc87ef35cc5c74785c50a368cf47` |
| 10 | `theorem` | [everyPoint_restricted](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/everypoint-restricted--09a0fb8b2b274772c8116be3.md) | 108 | `result-track:09a0fb8b2b274772c8116be31f9ed3df5024569b396681f5ab78bd33dc5882a7` |
| 11 | `theorem` | [finiteEmbedding_injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/finiteembedding-injective--f547fae227cabc3e0c44c3ae.md) | 119 | `result-track:f547fae227cabc3e0c44c3ae0266814cbe5099303eeef38ac4639fa3cba4fcc5` |
| 12 | `def` | [extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/extend--ab3d9ca71e399a324f7e7e43.md) | 131 | `declaration-track:ab3d9ca71e399a324f7e7e439ab6c61a24a91dc9003b4e38f176b7ac06478a9c` |
| 13 | `theorem` | [universalProperty](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/universalproperty--85151aca021e85dfedcfe36d.md) | 148 | `result-track:85151aca021e85dfedcfe36de5e265e6c6c31866abd6ab48ae058306cf5e025a` |
| 14 | `def` | [compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variantf94eda605459c134f651c35772793ca8cd20368b037c9803c26bcf731a02e0f6.lean/declarations/compareequiv--1b2e84ae4b382609a73aa00e.md) | 181 | `declaration-track:1b2e84ae4b382609a73aa00e7d19f379fe409f1caa8d6fa90139b9ad56a41c7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
