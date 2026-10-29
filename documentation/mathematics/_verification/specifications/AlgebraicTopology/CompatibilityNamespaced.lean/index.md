# Verification target: Compatibility Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59cef69095b372f10206483cfd5b0923fa64aeb0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59cef69095b372f10206483cfd5b0923fa64aeb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence₀](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence.md) | 64 | `declaration-track:94421bf7391b9b4b5be78e08e8a360e94ed325bd7caeeba2d0652b9e629425db` |
| 2 | `def` | [equivalence₁](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-source-edition-3.md) | 72 | `declaration-track:cbb5c9fadca311b96896cfe70bba68bf5567195848c42b8b2527d42fa7c7d639` |
| 3 | `theorem` | [equivalence₁_inverse](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-inverse-source-edition-2.md) | 74 | `result-track:d6ad939a7167fbcf202c36c856e5fb58c64f1daab6c8d8eaa545c26a91fe6217` |
| 4 | `def` | [equivalence₁CounitIso](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-counitiso-source-edition-2.md) | 79 | `declaration-track:894d024147503585f740389d5eb09876e11d505e4808e812946ad3615e8ac777` |
| 5 | `theorem` | [equivalence₁CounitIso_eq](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-counitiso-eq.md) | 88 | `result-track:195c547a8ca8045f3b30b3351ba55cca45003c0b0a9ecea552cd3f958b756b8a` |
| 6 | `def` | [equivalence₁UnitIso](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-unitiso-source-edition-2.md) | 94 | `declaration-track:2862dc3993f3994f5ac1285a31cdca7432bdbeebdb69ab1fb9860506214ed83d` |
| 7 | `theorem` | [equivalence₁UnitIso_eq](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-unitiso-eq-source-edition-2.md) | 103 | `result-track:83f49974ee934bdbda6b29f9be7b237111a550316c4e0df50d58bd883c79e22b` |
| 8 | `def` | [equivalence₂](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-source-edition-2.md) | 110 | `declaration-track:b8e12c530a58aa97fae1584362063780c2ceea2d693529d7f9a123cdb5178225` |
| 9 | `theorem` | [equivalence₂_inverse](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-inverse.md) | 113 | `result-track:5f562ce6caeed762c6649e214ee581d6de80c8cbc85370f14a530aae16465283` |
| 10 | `def` | [equivalence₂CounitIso](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-counitiso.md) | 119 | `declaration-track:61b1a578a8639ae978de34cde3ce14ffc11cb4b05f093dfdb69ae41db1ece820` |
| 11 | `theorem` | [equivalence₂CounitIso_eq](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-counitiso-eq-source-edition-2.md) | 129 | `result-track:9082070bcdcb3b1244064a1132b7efbe99c8d5d48e6082521c052b9ee203436f` |
| 12 | `def` | [equivalence₂UnitIso](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-unitiso.md) | 138 | `declaration-track:19119ce617ed4a067338ed0a93adf0985d1b05be12546058dc8edc7057dab4fe` |
| 13 | `theorem` | [equivalence₂UnitIso_eq](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-unitiso-eq.md) | 146 | `result-track:742674d2343f91f9000d9a35b1736e17d08f5bc2bcbbfb241f546aee5d8b48cf` |
| 14 | `def` | [equivalence](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-source-edition-4.md) | 158 | `declaration-track:f5f0f78fd7564ff8e40743961a652036cf18e692fe63e258d214744d675d1f48` |
| 15 | `theorem` | [equivalence_functor](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalence-functor.md) | 166 | `result-track:fd0d271fe4ad5ad73ae3044ce4826ac59a99a37f9748510a95eb88c5c6e2c88b` |
| 16 | `def` | [τ₀](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/anonymous-source-edition-2.md) | 172 | `declaration-track:9c32ae1ea451e91fa06719e952c05e6981541b9a06cbf8af26c1a76f44d07dbe` |
| 17 | `def` | [τ₁](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/anonymous.md) | 182 | `declaration-track:922cf2c17ffb64b63c0a8ded2cb38c6695cb9dbbaa78675748c050b9eb0c0f16` |
| 18 | `def` | [equivalenceCounitIso](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalencecounitiso.md) | 195 | `declaration-track:c021ce044b5e5a502a93c34a8ea0cb1331ad7e1a2664eec948c7055a1e68f762` |
| 19 | `theorem` | [equivalenceCounitIso_eq](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalencecounitiso-eq.md) | 203 | `result-track:38b3e337458772a77c76f5e8d29c0508175773ba95887d69049ad4108ede7551` |
| 20 | `def` | [υ](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/anonymous-source-edition-3.md) | 224 | `declaration-track:9f53d73ae09d722abfdb1c20e9d2f27ecf8edcc05bdc34a81769e1f0b1b5287d` |
| 21 | `def` | [equivalenceUnitIso](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalenceunitiso.md) | 235 | `declaration-track:0556474c769ab5692a05b0c3143a887369d5f5d43fbf291d994548efaa357c16` |
| 22 | `theorem` | [equivalenceUnitIso_eq](../../../../AlgebraicTopology/CompatibilityNamespaced.lean/declarations/equivalenceunitiso-eq.md) | 251 | `result-track:80f3644153bb691b3eab32f88664707e0122ed96b97897b226635f3434ad3d3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d02bcdc2aeb38861d3852c420467b617c3dca6df89a14cd4fc9d394d7ff2290f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variant9babc2e1ba0108d471dc5ef3da777316a4cdd6655e077bd567de24e8f762efb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
