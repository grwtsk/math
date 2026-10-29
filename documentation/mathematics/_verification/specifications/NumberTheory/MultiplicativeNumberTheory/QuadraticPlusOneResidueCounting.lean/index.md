# Verification target: GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe7c3452218ba2df97fb4086c983e0a1bbcd741",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe7c3452218ba2df97fb4086c983e0a1bbcd741`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots`](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneLocalRoots.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Int.CardIntervalMod` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticPlusOneDivisorCount](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonedivisorcount.md) | 35 | `declaration-track:dec1a43616b2c4798a505ed19eb6d985d0e8ba101683b9ccf8045c7d0570e590` |
| 2 | `def` | [quadraticPlusOneResidueClassCount](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusoneresidueclasscount.md) | 40 | `declaration-track:d31bf4da4f55f76edea72dd5087d378a96d7fb61795f97c35c580a5e515f7039` |
| 3 | `def` | [quadraticPlusOneRootEndpointTerm](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonerootendpointterm.md) | 46 | `declaration-track:62acd36aa0ce447c1bb9ba2d2fe4e91729fd2d2cdbc641c2681b81ae3c18f8a4` |
| 4 | `def` | [quadraticPlusOneCutoffError](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonecutofferror.md) | 51 | `declaration-track:031e49cca89116816febca1b48fac9155cb18ec3b498362c2812768fb14f2734` |
| 5 | `theorem` | [quadraticPlusOneCutoffError_le_rootCount](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonecutofferror-le-rootcount.md) | 57 | `result-track:0722e6df0ce98a1b63bbe2013415a4b6142bed379546bca13e4ff1400b5477fa` |
| 6 | `theorem` | [quadraticPlusOneResidueClassCount_formula](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusoneresidueclasscount-formula.md) | 74 | `result-track:8a1a6edee052d5849cbe27a73e664db30b954746aad7fc94bd240d1ee991d04b` |
| 7 | `theorem` | [quadraticPlusOneDivisorCount_eq_residueSum](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonedivisorcount-eq-residuesum.md) | 150 | `result-track:4af34d2f4549a671385fcf4015684b06671ca264c87acd59f3db409578e12ff5` |
| 8 | `theorem` | [quadraticPlusOneDivisorCount_formula](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonedivisorcount-formula.md) | 200 | `result-track:db70de77795743ea020c58d3dfc892979477a96f03e3bc4e7d170403abdcaf76` |
| 9 | `def` | [quadraticPlusOneLocalMain](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonelocalmain.md) | 229 | `declaration-track:6459705bd199d25301385f79448e20e17fd89e2fb54ef6d7da1e4a57b87f92df` |
| 10 | `def` | [quadraticPlusOneLocalDiscrepancy](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonelocaldiscrepancy.md) | 234 | `declaration-track:5c35987ce274bd30f523216874fc8d6363ef973c6b89e6570a3befbf35a144ed` |
| 11 | `theorem` | [abs_quadraticPlusOneLocalDiscrepancy_le](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/abs-quadraticplusonelocaldiscrepancy-le.md) | 240 | `result-track:814fa943d12b58a657913a6298304de42d1206c649239a5889dc44765e6103df` |
| 12 | `theorem` | [quadraticPlusOneDivisorCount_one](../../../../../NumberTheory/MultiplicativeNumberTheory/QuadraticPlusOneResidueCounting.lean/declarations/quadraticplusonedivisorcount-one.md) | 281 | `result-track:a72c1292f949b42d46cf570c6bbe3c7517f1f0944307acff675c05278037d508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdb9a57cfa70bcf52297199c52435ec9a769850558bddfc5e5cb9ce4a2f64a64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
