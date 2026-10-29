# Verification target: Countable Shadow Tower Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c6214f5506834a508a2808b8a215c5e1d74d56e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableShadowTower/Variant1792e3c365a0117dd9b037c9673e23d95dead9c7134fdb6a15d010f7156e2736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c6214f5506834a508a2808b8a215c5e1d74d56e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableShadowTower/Variant1792e3c365a0117dd9b037c9673e23d95dead9c7134fdb6a15d010f7156e2736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableShadowTower/Variant1792e3c365a0117dd9b037c9673e23d95dead9c7134fdb6a15d010f7156e2736.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.SpectralHarmonicSNARKInterface` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ZetaAuthorityReducer` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Cube.SpectralDeterminantBoundary` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RHSpectralHarmonicShadow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhspectralharmonicshadow.md) | 32 | `declaration-track:e8218da34474034094bbbe20f5c040904ed4c650e0ba5bf209f657d3c864a7f3` |
| 2 | `structure` | [RiemannHypothesisAuthority](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/riemannhypothesisauthority.md) | 40 | `declaration-track:ff1ce13317fcbdee8cdca748be636c24bbdefa9a46c25523157d2f40ce687ed5` |
| 3 | `structure` | [RHShadowParams](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhshadowparams.md) | 49 | `declaration-track:4de242f1fae92332c236bbf7561640c84897705cbc84315eeebc9a9ac156b830` |
| 4 | `structure` | [RHShadowSchedule](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhshadowschedule.md) | 62 | `declaration-track:390617d7753ddc6856a7891243525e6b45c53b999498f6d987dbae534be78942` |
| 5 | `structure` | [RHFiniteShadowVerifier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhfiniteshadowverifier.md) | 74 | `declaration-track:cf5d2b6d68c51473f941bd359aa3d8a85b1009ab09a9320f63f1855b3e120f00` |
| 6 | `def` | [BooleanFiniteVerifierAccepts](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/booleanfiniteverifieraccepts.md) | 78 | `declaration-track:24280f9ccf392dc9331de74295c804bd25e3a05e325f0c4196aee1ae2b16e1fc` |
| 7 | `structure` | [RHShadowTowerPredicates](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhshadowtowerpredicates.md) | 88 | `declaration-track:47cbbefa150dff7387de2f0368f4ffcca3c819a60d07bab2ea010147587e8fa4` |
| 8 | `structure` | [RHCountableShadowTower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhcountableshadowtower.md) | 105 | `declaration-track:3e0cad29b1be22fe066007e031528113890cc9c77854bbaa4eef0e4286d57b0d` |
| 9 | `def` | [PrefixVerified](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/prefixverified-source-edition-2.md) | 131 | `declaration-track:a9a630eefa6fcceb4e80fde5f5a5a2783eab546b7c7aa78c1c7a93cf61c65b09` |
| 10 | `theorem` | [prefixVerified](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/prefixverified.md) | 140 | `result-track:915c63b128e4a9a3ddaa14b595e3d39a89ffa7ddfeca8a54b502deffe8425f3a` |
| 11 | `def` | [CountableTowerAloneProvesRH](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/countabletoweraloneprovesrh.md) | 159 | `declaration-track:4d66315e6e60f75e35c0dc58b7376adefb5ca5befe43157fc2569a9dcce4d54e` |
| 12 | `theorem` | [countable_tower_alone_does_not_prove_rh](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/countable-tower-alone-does-not-prove-rh.md) | 166 | `result-track:b0815792201f8608a9c6fbe80292e2de7dfa45de7b0a1059b6a327535c904cea` |
| 13 | `structure` | [RHCountableTowerAnalyticBridge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/rhcountabletoweranalyticbridge.md) | 180 | `declaration-track:b3e37f621a925f52bfd550f9edbc5046a1dfed1fdf236c96fca8af0c9f84dd7b` |
| 14 | `theorem` | [riemannHypothesis](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CountableShadowTowerNamespaced.lean/declarations/riemannhypothesis.md) | 205 | `result-track:f599f852f0cfe569aa0a5c418d9a0dd857346471c9c5e5897c549a5a1e6e65d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c83f0747c8f4c052b22be425f45ad12fca2985fd304a9cffa8dd7b85e02fbf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableShadowTower/Variant1792e3c365a0117dd9b037c9673e23d95dead9c7134fdb6a15d010f7156e2736.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CountableShadowTower/Variant1792e3c365a0117dd9b037c9673e23d95dead9c7134fdb6a15d010f7156e2736.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
