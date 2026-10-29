# Verification target: Secondary Definitions Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de27f41e12c834060ee8723d6924d6402f6ec2f2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de27f41e12c834060ee8723d6924d6402f6ec2f2`.

Source path: `GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Consequences` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions` — import line 5; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.Li2Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LiSeries` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.EulerMascheroniBounds` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LnFactorialSeries` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_le](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/log-le.md) | 32 | `result-track:7209f81f85503e48560889975a67cd76d4da4e9d381b02e3a956855ea10086ae` |
| 2 | `theorem` | [log_ge](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/log-ge-source-edition-2.md) | 47 | `result-track:7b335f28bc1da394b1b35e607f322bcc38d53f05871b45a3a24b4a76580d9287` |
| 3 | `theorem` | [log_ge'](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/log-ge.md) | 79 | `result-track:002eaee5b6b6c9cf9c00df1409677b5e56ecc4f6f2de6e032fef0c5428525328` |
| 4 | `theorem` | [symm_inv_log](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/symm-inv-log.md) | 110 | `result-track:951423b7d320ecdf29434abcf984adccd89d01c697903c94039286cec58cd9ec` |
| 5 | `theorem` | [li.sub_Li](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/li-sub-li.md) | 174 | `result-track:9ed9d630bcc977acc0fbcf94e68293b61da7134d3b62cdfaefd7fc1941822796` |
| 6 | `theorem` | [li.two_approx](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/li-two-approx.md) | 211 | `result-track:e9309cd6ce218ac33ca5898cc6df1b52916a363e24072309c84b073a064d552d` |
| 7 | `theorem` | [li_eq_Li2Bounds_li](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/li-eq-li2bounds-li.md) | 220 | `result-track:b9a3d107a67b1165d646fc31ff4abc3b2f494213ece6b54094e824054a92d023` |
| 8 | `theorem` | [li.two_approx_weak](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/li-two-approx-weak.md) | 233 | `result-track:e3de0a223019f742d7491202016279387361c006fb3ce613823d34189941ad61` |
| 9 | `theorem` | [li2_symmetric_eq_li2](../../../../MeasureAndIntegration/SecondaryDefinitionsEdition2.lean/declarations/li2-symmetric-eq-li2.md) | 248 | `result-track:bb8410dcb5aacf6e5d8e7dbf33248aa68406be8087348a75d2dd4f508d40e7fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dde6f19bf07aa77001ed2bc5c2bf93ce2f150f24e75377ccdc403aeb91966b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean","GRWTSK/_verification/specifications/Topology/SecondaryDefinitions/Variantd6365b49d70fb81ddc113456b9898bd8f9fd4f668cbfa1ba3c5c49b966c79954.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
