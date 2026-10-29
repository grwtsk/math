# Verification target: Mobius Perron Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57285338a8e48d13e635158ddd5e72d38ccf42d4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57285338a8e48d13e635158ddd5e72d38ccf42d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/mobiusdirichlet-reciprocal.md) | 21 | `result-track:2f8ec22f858cf876113d79f32c368ef6fd5b158a20a76ffb64c6f045f540627c` |
| 2 | `def` | [perronTerm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm.md) | 31 | `declaration-track:7e78fd772e9b15b246e974b5e67b9ead4a793e2aaea72036e825eff467c5cf52` |
| 3 | `theorem` | [perronTerm_norm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm-norm.md) | 37 | `result-track:1b4508d1729617cd21b9c5b2ed54e3be467974a09127b6091d33e0b594f59316` |
| 4 | `theorem` | [perronTerm_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm-integrable.md) | 47 | `result-track:295534c9c0197538f203ea776bc910868c653fa670fa623ca540dd1dbf7eded3` |
| 5 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm-norm-integrals-summable.md) | 58 | `result-track:ead435e4e1aae88288c8c7b5f6bdb3ec2dc4e425fe2e407910aff468428eb23d` |
| 6 | `theorem` | [perronTerm_tsum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm-tsum.md) | 67 | `result-track:d3add08c55704e05522aa792ed54077287c84067456e266d48ee2ca8467f9847` |
| 7 | `theorem` | [perronTerm_ratio](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm-ratio.md) | 82 | `result-track:7361c4a3dd11c404cd6749d1a550094f04552eccfa4023473708ae7ba9a4294a` |
| 8 | `theorem` | [mobiusPerron_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/mobiusperron-integrable.md) | 97 | `result-track:bc6a6ed939d4de41cab107909d8d95ca51f8ed2122849d4a3e4b4d87d40c49b8` |
| 9 | `theorem` | [perronTerm_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/perronterm-integral.md) | 122 | `result-track:76c28d2cd6d1a35c88cf2852e992bed93a64b58082a62cfa6d132aba8e42cf73` |
| 10 | `theorem` | [logNormalization_perron](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/lognormalization-perron.md) | 134 | `result-track:a6eb2abd2a71fac01fda39ad3df4730db0458ecd0bd56b4daa49b52ac1c66bd4` |
| 11 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-2.md) | 188 | `declaration-track:1e8bc8f50d4131d842ab9ef9d1f3d35a3031ee78ff5ff4776846675b3247b527` |
| 12 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-3.md) | 191 | `declaration-track:2d0974dce00492d75a2f9bad21e2aa087654927acf4d94bb1eec7f1d70935ff9` |
| 13 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example.md) | 195 | `declaration-track:15f745b29c55f17de63a5e205d0de72cde6284847524bb3ba2fc3136a0bc03b5` |
| 14 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-5.md) | 199 | `declaration-track:7873c22cda0bef547752d619ba6913d98a5080f42be89cc1738c69217061a159` |
| 15 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-9.md) | 201 | `declaration-track:e07647614704fbe9442132181f12a82eb9cdb81189b443b5ff617fedfbab6fb1` |
| 16 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-4.md) | 204 | `declaration-track:72927fe362b49520b9d45517fcba79f82a3b03335ad0b68864858c7ca7ce060e` |
| 17 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-8.md) | 209 | `declaration-track:dfbd9f0e0ec73d529b92246011f65823f2d5f73ebbfa9a544371768337c84153` |
| 18 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-6.md) | 212 | `declaration-track:84fded3ea9c853f352d202fdb54d2d2487034a834c04351e0f52b3eb2f42a9c2` |
| 19 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-10.md) | 217 | `declaration-track:f31adf780a50e027a1c545276c8376ed41101d6eb838914982e5f58d4dc7e302` |
| 20 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MobiusPerronLiteralCheck.lean/declarations/example-source-edition-7.md) | 222 | `declaration-track:c1e912eba69b7a07432ce32008defa27efa25364146a63bb8c8fd1682851ee82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54697a9254c0b83b83843acb8af0d9b6c35126012503214a30d342d84a19da5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MobiusPerronLiteralCheck/Variant6460f5ef2ce130452bc5039385613e2aed0a425ee67e7dfcc55e08ffd454b701.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
