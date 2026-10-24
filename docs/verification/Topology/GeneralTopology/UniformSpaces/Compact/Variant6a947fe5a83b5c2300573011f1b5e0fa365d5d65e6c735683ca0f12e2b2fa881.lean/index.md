# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Compact.Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ab3169a8e315499a405b1973150ada5e21b9bb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ab3169a8e315499a405b1973150ada5e21b9bb`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Support` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhdsSet_diagonal_eq_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/nhdsset-diagonal-eq-uniformity--ec32304ad04f2e0ae4f4f983.md) | 58 | `result-track:ec32304ad04f2e0ae4f4f983f9f5bd0903b3743faf1e341fd7bb58058d6d7b16` |
| 2 | `theorem` | [compactSpace_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/compactspace-uniformity--b942b107d3ad5b94065534eb.md) | 72 | `result-track:b942b107d3ad5b94065534ebf7732c30522dd768f5fc8e0ce0046b6be6dd51a9` |
| 3 | `theorem` | [unique_uniformity_of_compact](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/unique-uniformity-of-compact--627636b27539a72df7abf162.md) | 76 | `result-track:627636b27539a72df7abf162b846071183da3038ade21bcacc222812c593982c` |
| 4 | `def` | [uniformSpaceOfCompactT2](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/uniformspaceofcompactt2--f5c7959d0ee58c6da682b215.md) | 86 | `declaration-track:f5c7959d0ee58c6da682b21563e7d54f4d82f259d1363501335eac5648d4d010` |
| 5 | `theorem` | [CompactSpace.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/compactspace-uniformcontinuous-of-continuous--95612258bb27b6f5cef822bd.md) | 175 | `result-track:95612258bb27b6f5cef822bd198268f9e0d528712430eaea4869dd91b32c669e` |
| 6 | `theorem` | [IsCompact.uniformContinuousOn_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/iscompact-uniformcontinuouson-of-continuous--f36a05367cc42989f0a10bdc.md) | 185 | `result-track:f36a05367cc42989f0a10bdc6ebd573c3a07201775db1055f6cf25c563f0c5c1` |
| 7 | `theorem` | [IsCompact.uniformContinuousAt_of_continuousAt](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/iscompact-uniformcontinuousat-of-continuousat--043ce5ca4e3ca5861544a8e6.md) | 197 | `result-track:043ce5ca4e3ca5861544a8e69ea807363fb53cb960b1d738212ccf2584cf4f77` |
| 8 | `theorem` | [Continuous.uniformContinuous_of_tendsto_cocompact](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/continuous-uniformcontinuous-of-tendsto-cocompact--11efdf9dbe7b14ca3a6ff167.md) | 212 | `result-track:11efdf9dbe7b14ca3a6ff1674c798faf7993a7f7c0fb28865c21832de57ce896` |
| 9 | `theorem` | [HasCompactMulSupport.is_one_at_infty](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/hascompactmulsupport-is-one-at-infty--28d436f2bdf14bdae579cac1.md) | 231 | `result-track:28d436f2bdf14bdae579cac100fe6f351126b5729a246d0dce2612004eeeafb7` |
| 10 | `theorem` | [HasCompactMulSupport.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/hascompactmulsupport-uniformcontinuous-of-continuous--96a12a621019dd69645bb43c.md) | 245 | `result-track:96a12a621019dd69645bb43cbd0aadc6fe53ec5c6497c05a021b4c09c8cb9b80` |
| 11 | `theorem` | [ContinuousOn.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/continuouson-tendstouniformly--84f92120a1c5b492f773f93f.md) | 253 | `result-track:84f92120a1c5b492f773f93f2a9d2497e5ed084bb8f5e8784b91ba6cf6a79851` |
| 12 | `theorem` | [Continuous.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/continuous-tendstouniformly--1f27d3bcaf04d40139f5e733.md) | 265 | `result-track:1f27d3bcaf04d40139f5e7332cf275545c2b1d3cb08581c3be31a05ff18f9e61` |
| 13 | `theorem` | [CompactSpace.uniformEquicontinuous_of_equicontinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6a947fe5a83b5c2300573011f1b5e0fa365d5d65e6c735683ca0f12e2b2fa881.lean/declarations/compactspace-uniformequicontinuous-of-equicontinuous--15d66fd48db07290948bd8a9.md) | 274 | `result-track:15d66fd48db07290948bd8a95b15cd43580adac330179fa6e6f647230808ce9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
