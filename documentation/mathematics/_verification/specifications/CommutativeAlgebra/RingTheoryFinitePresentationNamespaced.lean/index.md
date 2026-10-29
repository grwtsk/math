# Verification target: Ring Theory Finite Presentation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92c5817f3af493dce9b067ce620679e8278db287",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92c5817f3af493dce9b067ce620679e8278db287`.

Source path: `GRWTSK/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Ideal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Tower` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FinitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/algebra-finitepresentation.md) | 49 | `declaration-track:0af3a168a939748ccddb4d6d6da86856dcc504a40edd5c554c3f0f04d6158498` |
| 2 | `instance` | [of_finitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-finitepresentation-source-edition-2.md) | 61 | `declaration-track:5ac909f24511b4d3d292708c4736b9bbd9c59a94386ff3bc6f6e129bd7a9a4b2` |
| 3 | `theorem` | [of_finiteType](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-finitetype.md) | 74 | `result-track:167b8c1a517e3427aaeee4aed7d9b44e17515920a9bf7afd2e99b1726525ff54` |
| 4 | `theorem` | [equiv](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/equiv.md) | 85 | `result-track:97ac22e36ab00c3be769a1c42454d1a8d3c1d8d2af2399fe9b6174d0186e3638` |
| 5 | `instance` | [mvPolynomial](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/mvpolynomial.md) | 106 | `declaration-track:525d050b82dc5a78bf2acda7a2a0f6aa5a5f9060117f65bf3386776a7b6b43a8` |
| 6 | `instance` | [self](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/self.md) | 116 | `declaration-track:eb206048ee32799fae3fac1e7652a2ef0d7f4acd0270d3648068320009fdf9dc` |
| 7 | `instance` | [polynomial](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/polynomial.md) | 121 | `declaration-track:5e980521a3e7620f897f3535dadee98146d9c0a2c1f3834614a6271631f14e03` |
| 8 | `theorem` | [quotient](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/quotient.md) | 130 | `result-track:c80936665779abdc71b1cebfb8c9fad51ab25c5bf3644e72fe44bd662692b73a` |
| 9 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-surjective-source-edition-3.md) | 141 | `result-track:a8508d4075c0cc8cba30d39102036c0b04ca53bc224c096fbce2d5b68a120d87` |
| 10 | `theorem` | [iff](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/iff.md) | 147 | `result-track:bcde38c3ed9f25757e4d8353e1c1502af9670cc39d68418523da82e70243241f` |
| 11 | `theorem` | [iff_quotient_mvPolynomial'](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/iff-quotient-mvpolynomial.md) | 159 | `result-track:79cceeb5b6da45c01f25d14def18e0aef0e5f55ed38df70df04ea34e90d10ec4` |
| 12 | `theorem` | [mvPolynomial_of_finitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/mvpolynomial-of-finitepresentation.md) | 180 | `result-track:4e339e6d7c425eb34db75ea2ee0ed4555bb3352e5fb2a933e682e8bd31a6552d` |
| 13 | `theorem` | [trans](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/trans.md) | 203 | `result-track:cf9c629c016e93276110df4602511d9d1ea68c6cbb2b19b8156f33d9c7e6f2c1` |
| 14 | `theorem` | [of_restrict_scalars_finitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-restrict-scalars-finitepresentation.md) | 215 | `result-track:16514dbfe4f930c6aab8553b2a0c5d1853ff33f12a443950664b488959be01ca` |
| 15 | `theorem` | [ker_fg_of_mvPolynomial](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/ker-fg-of-mvpolynomial.md) | 304 | `result-track:78e06b4136cfbbf9d15c2d8cce8b05b94922e7896167135e0e7ce074a47e6ca8` |
| 16 | `theorem` | [ker_fG_of_surjective](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/ker-fg-of-surjective.md) | 378 | `result-track:916f1e721d1a3c0e5b810c4927ed890a5512d9e65fc34b85e5c4ba78ccb31579` |
| 17 | `def` | [FinitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/finitepresentation.md) | 398 | `declaration-track:2e09b68ba69c56b85ac7c53f7e292cda20cbfc4cf48ed2383c6c6aaf47139907` |
| 18 | `lemma` | [finitePresentation_algebraMap](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/finitepresentation-algebramap.md) | 402 | `result-track:b7ba83e84a62e31bee4e1f22049a0b1a15c4a0fe355f194e40416aba3ce2d5a1` |
| 19 | `theorem` | [of_finitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-finitepresentation-source-edition-3.md) | 410 | `result-track:78735764bcafdea023039071c48be39673e0d71352559f222a256871b8021051` |
| 20 | `theorem` | [id](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/id-source-edition-2.md) | 418 | `result-track:cdd19c8a7e97a08d53025ca310ad1fd131893452a48689f3a1e6c67cf7921705` |
| 21 | `theorem` | [comp_surjective](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/comp-surjective-source-edition-2.md) | 421 | `result-track:fc706b0c563664f3afe3516651b01de3e0f07729a53e28a114b38cfda8bf9f29` |
| 22 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-surjective.md) | 431 | `result-track:7c6f317665c61363a66f7d33699a99a573bab969ce80545b17f01b7963da1a1c` |
| 23 | `theorem` | [of_finiteType](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-finitetype-source-edition-3.md) | 436 | `result-track:685a9cceadd2ea7ee10df8622f9b1110b5577dfd56b0f074db46bddc83d4d512` |
| 24 | `theorem` | [comp](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/comp-source-edition-2.md) | 439 | `result-track:a74ca415668f2e45dd180210d0903f261ffdd2f25afb2f9337683b70d4adf02c` |
| 25 | `theorem` | [of_comp_finiteType](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-comp-finitetype-source-edition-2.md) | 445 | `result-track:d642d6f4659a2fa6533e54cc49168a2ee286741b392fdb5bb12fd24ef8450fa4` |
| 26 | `lemma` | [polynomial_induction](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/polynomial-induction.md) | 471 | `result-track:638a0932a215faa048d9d0f037667c4e7206a83afe65a38dbd9769c76c61471e` |
| 27 | `def` | [FinitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/finitepresentation-source-edition-2.md) | 520 | `declaration-track:402f651f9f24142ff9ce472496407142cc900bdeb35043361bcc2c1055524316` |
| 28 | `theorem` | [of_finitePresentation](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-finitepresentation.md) | 525 | `result-track:4addd1702d4de834e3d465e11593a0f0a90086d9f2dcec1ada83e08bec1298de` |
| 29 | `theorem` | [id](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/id.md) | 534 | `result-track:7f28f5534ea3a799c06408eb437e81187200a4a4311d0b4500eb828c55c955b1` |
| 30 | `theorem` | [comp](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/comp.md) | 539 | `result-track:4017280f9f5831f04405449577c196c9ffa5f3508ac6c89f2b7afe15422f7780` |
| 31 | `theorem` | [comp_surjective](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/comp-surjective.md) | 543 | `result-track:7c9ff727f227e043b3670998e5d28cc51479e38be87b37f8d6080ba6277233e4` |
| 32 | `theorem` | [of_surjective](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-surjective-source-edition-2.md) | 547 | `result-track:8cd59343e0fea650c50dd8e4b2aad5c9b87743a712d5bc6ef73d1fbf635831a4` |
| 33 | `theorem` | [of_finiteType](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-finitetype-source-edition-2.md) | 552 | `result-track:3a2872a8e8821fb1e2dd77997186b3bdb81e418494e051077da6acec1647e812` |
| 34 | `theorem` | [of_comp_finiteType](../../../../CommutativeAlgebra/RingTheoryFinitePresentationNamespaced.lean/declarations/of-comp-finitetype.md) | 555 | `result-track:2788ca2148c0b1a988584d87fc769e424b24765c5b051720a94f34857da9ba02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=606e941675faa32396145374e4836b4f99c19b7c617940a232d1d2771500690a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean","GRWTSK/_verification/specifications/Algebra/FinitePresentation/Variantfc3d18ea0dc9734a7fdbc86d4315d572533405daff1edbe41b59cb384118a893.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
