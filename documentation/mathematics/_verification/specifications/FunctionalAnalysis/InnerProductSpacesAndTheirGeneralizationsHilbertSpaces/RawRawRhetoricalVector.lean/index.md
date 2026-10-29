# Verification target: Raw Raw Rhetorical Vector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d147a6cf293aa9f5511fb3ea7dc8eb515bdff4c1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d147a6cf293aa9f5511fb3ea7dc8eb515bdff4c1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Raw/Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Role` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Completion` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RawRhetoricalVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/rawrhetoricalvector.md) | 23 | `declaration-track:fc692ea04facedd6c9742efb20ae098df00d27274d4b41b652ad0870b2493418` |
| 2 | `def` | [Raw](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/raw.md) | 29 | `declaration-track:59308bf9d99b0fc571733234419fa654b76240054e0f6264de94d6e647cf7f2c` |
| 3 | `def` | [toFinsupp](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/tofinsupp.md) | 36 | `declaration-track:ad66106d05c555b168d8a1d28f4a3cbf36a2c046b7934d52a966fa4a0943dc95` |
| 4 | `def` | [inner](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/inner.md) | 40 | `declaration-track:bcf51f820c23a812b2e17f76d06d18fcdfab1fea042059aa62126615a5d8391b` |
| 5 | `def` | [core](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/core.md) | 46 | `declaration-track:5c2dfcd3570e0d0e942fc64a3290caa6c4a4abe0aba911e985a61b42d6c9cdf9` |
| 6 | `def` | [seminorm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/seminorm.md) | 71 | `declaration-track:00316498ea468e27148a137cc2c3e23ce98eb45bb2de9d2a0d38ce148209f4cf` |
| 7 | `theorem` | [conjugate_linear_left](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/conjugate-linear-left.md) | 75 | `result-track:4edd7aa5064c81e22491da450871ff04e845739ba46ffd2d4f417e8b3d5bc1ea` |
| 8 | `theorem` | [inner_conj_symm](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/inner-conj-symm.md) | 82 | `result-track:7a6dc32324faae17c411fac275f604e4fe5829388a3abd3d198251bc3b8dcd3f` |
| 9 | `theorem` | [linear_right](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/linear-right.md) | 87 | `result-track:5ec3cfb61db473a2bd85458241ea5b10c953453d11d2460e59f64e308755000f` |
| 10 | `theorem` | [add_left](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/add-left.md) | 95 | `result-track:dfd6a725bc76032ac407956554c9fc045eefe81d6c4587f2d5e1d41092435651` |
| 11 | `theorem` | [add_right](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/add-right.md) | 101 | `result-track:05cc170da72f92e6b9b1910cd57fc645ed7e7fd2a3d52d93f2b9bc5cfa014c75` |
| 12 | `theorem` | [inner_self_nonneg](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/inner-self-nonneg.md) | 108 | `result-track:df4058ae55057acf62541e946956d70fe311c162fa39c72b8a0f7ada77e8ad17` |
| 13 | `theorem` | [kernel_cauchy_schwarz](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/kernel-cauchy-schwarz.md) | 113 | `result-track:5c97cb8409f510406fbbb428544e9f2d47aa2d8d57416e8c8ad6e3b8a9ecb014` |
| 14 | `def` | [basisVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/basisvector.md) | 125 | `declaration-track:a908e2d2cfaffeafc0563767d57c108ccc24ebc829c48a974af65b2ff064345b` |
| 15 | `theorem` | [inner_basisVector_basisVector](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RawRawRhetoricalVector.lean/declarations/inner-basisvector-basisvector.md) | 129 | `result-track:4b036c41d2dd212f6419929fabea968027a3f1229085f9abad3597d86559408d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=037fcc5ccdb6234eab72911a10fbcb2263ec7d566c990e15127fa420324e7746 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Raw/Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Raw/Variantf730a3c45bcfaf5f888ca2af904b05ccbf09dc1a73ec14940263259b2c28f1f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
