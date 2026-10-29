# Verification target: Whole Canonical Factor Map Representation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583a7242234dfa9c063bdcf0c96c842ae6912f45",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/PrimeFactorization/CellularCochainsAndArithmeticData/Variant10b48324e57283bb/WholeCanonicalFactorMapRepresentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/index.md) · [Full source](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583a7242234dfa9c063bdcf0c96c842ae6912f45`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/PrimeFactorization/CellularCochainsAndArithmeticData/Variant10b48324e57283bb/WholeCanonicalFactorMapRepresentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Divisibility/PrimeFactorization/CellularCochainsAndArithmeticData/Variant10b48324e57283bb/WholeCanonicalFactorMapRepresentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CellularArithmetic.ArithmeticTree` — import line 21; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FactorMapRepresentation](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/factormaprepresentation.md) | 39 | `declaration-track:d347909ac6f699aa127e55966b34018d39022367282d6059feba014d496ef1a3` |
| 2 | `def` | [FactorMapRepresentation.decode](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/factormaprepresentation-decode.md) | 46 | `declaration-track:2417400d6c44fcaad2076db8f371b64c8be2314f297b876e141fff29f690b5b8` |
| 3 | `structure` | [CellularArithmeticRepresentation](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/cellulararithmeticrepresentation.md) | 50 | `declaration-track:f8f27da59be490d65e655293ee18c81359846843cdfbfe224f2026b9a3c1adf1` |
| 4 | `def` | [number](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/number.md) | 55 | `declaration-track:f715508cc0837784fc4ce55b31a8f31ad0f89021be073ecf20b39b916bb3cecf` |
| 5 | `def` | [decode](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/decode.md) | 59 | `declaration-track:e71231a6e0d89a72a637d6f0db091a612fdc65460a5a52e126edee151e27e543` |
| 6 | `def` | [canonical](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/canonical.md) | 62 | `declaration-track:6da1272e9102fabf5ab7a9a25a1c073fadaa0220c714745b4bbf287915f2ce75` |
| 7 | `def` | [encodeFactorMap](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/encodefactormap.md) | 67 | `declaration-track:e68870457f4f42dd5b978fdb1bcaea2af8ea47523e589d44aceca93afb2fdb74` |
| 8 | `def` | [encodePositiveNat](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/encodepositivenat.md) | 79 | `declaration-track:a2b10a075a76804a66395159f79d352a5a406dfc34b1d7a609d955177f70936d` |
| 9 | `theorem` | [decode_encode_positiveNat](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/decode-encode-positivenat.md) | 84 | `result-track:6a740176099246b4507a03d3f83fbdf96b855ba6a2f3b9c86b0e1b28d4e7d1a1` |
| 10 | `def` | [SameDecoded](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/samedecoded.md) | 89 | `declaration-track:ba4295dbd5d50bfeccbfffc17b490de451a313c3e3e29f360ea82cdf9cb69445` |
| 11 | `theorem` | [factorMap_unique_of_same_number](../../../../NumberTheory/WholeCanonicalFactorMapRepresentation.lean/declarations/factormap-unique-of-same-number.md) | 93 | `result-track:d71e6bc22ddecdf20daa7328ca3349a8b592e5963b766e98e8a7ba751b3b5eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa87238c2149f6990e9995946ae4f86889d7fdba2bc0050fddbe9ba3366ad7c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/PrimeFactorization/CellularCochainsAndArithmeticData/Variant10b48324e57283bb/WholeCanonicalFactorMapRepresentation.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Divisibility/PrimeFactorization/CellularCochainsAndArithmeticData/Variant10b48324e57283bb/WholeCanonicalFactorMapRepresentation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
