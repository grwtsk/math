# Verification target: Fourier Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e36a1ab8e9efefe8dd16bb8cdf9b8a707b7b4ba",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantaea3650ddca26f0e47de00045cd0c36c2a307722c4795602a3c90685c55543d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e36a1ab8e9efefe8dd16bb8cdf9b8a707b7b4ba`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantaea3650ddca26f0e47de00045cd0c36c2a307722c4795602a3c90685c55543d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantaea3650ddca26f0e47de00045cd0c36c2a307722c4795602a3c90685c55543d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.TruthTable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fourier.IntFunction](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-intfunction.md) | 14 | `declaration-track:56e0b3952852fe835dd79e91b68d8ec3b0a96c212a148c2b44f4b5161b7151cd` |
| 2 | `abbrev` | [Fourier.SignedFunction](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-signedfunction.md) | 18 | `declaration-track:a02f94d2e83e2eee66e2c29ccc3cb71a5c1b102a0e200c60bd137e861e4d0083` |
| 3 | `structure` | [Fourier.Dyadic](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-dyadic.md) | 22 | `declaration-track:11ec5f1847085f6fd16bf072342f1fc1ae9f4454d22faf9994cc587588bfa360` |
| 4 | `def` | [Fourier.Dyadic.denominator](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-dyadic-denominator.md) | 28 | `declaration-track:445f9cc26b2255b45435cfdf773e66459f74882f8e2e1086396415daf023ba84` |
| 5 | `def` | [Fourier.signedOutput](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-signedoutput.md) | 32 | `declaration-track:37616b26d0a84c4e5fa43fda236f7c103598db1be1c4ad9964c1eda72f630fcc` |
| 6 | `def` | [Fourier.zeroOneOutput](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-zerooneoutput.md) | 37 | `declaration-track:5c3c1b66f7924b12734c6e523ffe817df638962e4602151409255c111a4b091c` |
| 7 | `def` | [Fourier.character](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-character.md) | 47 | `declaration-track:4ee1424dc33e54964cd5eeffb07ecca8840dbf96702bbbf091590900aea48c1d` |
| 8 | `def` | [Fourier.coefficientNumerator](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-coefficientnumerator.md) | 65 | `declaration-track:c8f58684133821e07428aa7b58bce1d9d8828da0d9c12f8d9caef8d0d2aeb760` |
| 9 | `def` | [Fourier.coefficient](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-coefficient.md) | 74 | `declaration-track:49bd0d27f3e233013878ec832beaf9234fbd1c7b24e4e656aa8c3db3cc658998` |
| 10 | `def` | [Fourier.subsets](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-subsets.md) | 82 | `declaration-track:ea68174603ea13b5169225517bf35336db19c4b3d7cda886fe44cbc4c74a85e1` |
| 11 | `def` | [Fourier.synthesisNumeratorAt](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-synthesisnumeratorat.md) | 87 | `declaration-track:7d5a7eff41a98618557e8e126229705a52c9f58b750705b5a0cd599341673015` |
| 12 | `def` | [Fourier.synthesisAt](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-synthesisat.md) | 96 | `declaration-track:bec047f3050e5fa332134e5b615979e5d1359e2bfef0ab6bed69310d4a98c5ff` |
| 13 | `def` | [Fourier.workflow](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierNamespacedEdition1.lean/declarations/fourier-workflow.md) | 104 | `declaration-track:f6f721d81a358cae425ab95b5ea84871459bbceb0b75c41ce74a28a6536b3e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bb609028b1192ded544ff00231d9c1ed128e45d3c129c58e23a330a0374f670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantaea3650ddca26f0e47de00045cd0c36c2a307722c4795602a3c90685c55543d5.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantaea3650ddca26f0e47de00045cd0c36c2a307722c4795602a3c90685c55543d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
