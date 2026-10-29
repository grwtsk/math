# Verification target: GRWTSK.Algebra.Flat.Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015a564022dc6c4ca3a0f590bc99f36dd7963fd6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/index.md) · [Full source](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015a564022dc6c4ca3a0f590bc99f36dd7963fd6`.

Source path: `GRWTSK/Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Localization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.GoingDown` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RingHom.Flat](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/ringhom-flat--077b7cf4d292a65dbdea5cdf.md) | 31 | `declaration-track:077b7cf4d292a65dbdea5cdf10bb8dec8d9192d0486c43725aae623748acd0e8` |
| 2 | `lemma` | [flat_algebraMap_iff](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/flat-algebramap-iff--813f40e44d207a21f77b0d46.md) | 35 | `result-track:813f40e44d207a21f77b0d46f2909f49857edcd4d033432046faedee53012404` |
| 3 | `lemma` | [id](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/id--3ed40cb2a36fb599f8cd7d54.md) | 47 | `result-track:3ed40cb2a36fb599f8cd7d54d8acf3f3f4f4cd1211a8f1ab84b2aa4adb91bf44` |
| 4 | `lemma` | [comp](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/comp--e8e858cfa3c5a69c657dd25d.md) | 51 | `result-track:e8e858cfa3c5a69c657dd25d4631d9b5454930f8c3c83b971458f3205394db16` |
| 5 | `lemma` | [of_bijective](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/of-bijective--29424e5071a3a2e4976fa229.md) | 56 | `result-track:29424e5071a3a2e4976fa229199d0268282b4b2854b9d404ef87a5fad2bb6028` |
| 6 | `lemma` | [containsIdentities](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/containsidentities--6dc384446d92f03fe08d0eea.md) | 60 | `result-track:6dc384446d92f03fe08d0eea8564d32aeed711de474ee06c18295448e7878530` |
| 7 | `lemma` | [stableUnderComposition](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/stableundercomposition--da09edcda61c53c460c21e4c.md) | 62 | `result-track:da09edcda61c53c460c21e4c22be577fc0df0d902ab81fb5d2586ec63c3a35ee` |
| 8 | `lemma` | [respectsIso](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/respectsiso--a97ef2089a2c7b03a0facd58.md) | 66 | `result-track:a97ef2089a2c7b03a0facd584f01f2433c82fe90e9a7f485455a21d146b3478d` |
| 9 | `lemma` | [isStableUnderBaseChange](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/isstableunderbasechange--4069a77cb14f381f31be84d1.md) | 71 | `result-track:4069a77cb14f381f31be84d14212d37bb694524d46e9f251d7d323d3b400c4c6` |
| 10 | `lemma` | [holdsForLocalizationAway](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/holdsforlocalizationaway--6e3e665ca453c94ff1bafb6d.md) | 80 | `result-track:6e3e665ca453c94ff1bafb6d2a57f46f8f02c89b015870b9e1169556bdc182e0` |
| 11 | `lemma` | [ofLocalizationSpanTarget](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/oflocalizationspantarget--05a607cfc6cdd600b8b42d51.md) | 86 | `result-track:05a607cfc6cdd600b8b42d51be3830e340c2afb3757cf9827ee5c8776e329978` |
| 12 | `lemma` | [propertyIsLocal](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/propertyislocal--57e7556bba594eb171975f6a.md) | 96 | `result-track:57e7556bba594eb171975f6a60a0d03bc7c6885a1dc0dc4a3013370b9c2304f2` |
| 13 | `lemma` | [ofLocalizationPrime](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/oflocalizationprime--779f0c1d3cbf651cc997c6e4.md) | 106 | `result-track:779f0c1d3cbf651cc997c6e4953483e9fba5fe5c652a1279744b0790cb2aa09d` |
| 14 | `lemma` | [localRingHom](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/localringhom--be0f8d6a5fc20dbcd08cb7e2.md) | 119 | `result-track:be0f8d6a5fc20dbcd08cb7e22a6ed12ad7b4f5240156a3c0c7123ba05f9d021d` |
| 15 | `lemma` | [generalizingMap_comap](../../../../../Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean/declarations/generalizingmap-comap--e36d7cacba29ba2f272c516c.md) | 133 | `result-track:e36d7cacba29ba2f272c516c25498741d283cf1d1ff43824579895ae1d77b26c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5a0d6df4a5bf3487c89beffff7abacf4a0307d11cfff418be8fe149e030f6ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean","GRWTSK/_verification/specifications/Algebra/Flat/Variante79853932b08307de1bfdc29e6695d27f45b12bee18c11e8b080fe0e9cca3fca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
