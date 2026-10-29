# Verification target: GRWTSK.Analysis.RootActualXiComplexLaplaceBudget.Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "372816e046dda93308414e56a3ba1bc7c607e77e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/index.md) · [Full source](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `372816e046dda93308414e56a3ba1bc7c607e77e`.

Source path: `GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiComplexLaplace](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/declarations/actualxicomplexlaplace--c91aa513499f5b273157b914.md) | 20 | `declaration-track:c91aa513499f5b273157b91422ce7d167d446f3453c5cd8dd7f030714bfa132e` |
| 2 | `theorem` | [coefficient_nonneg](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/declarations/coefficient-nonneg--026eee36180c7ebb5caf965f.md) | 24 | `result-track:026eee36180c7ebb5caf965f6d7a75a721ef61a1c7cd9b0bb51c7468a21bbac7` |
| 3 | `theorem` | [primitive_continuousOn_Ici](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/declarations/primitive-continuouson-ici--a9212534b20e9f9f5bee2a3e.md) | 28 | `result-track:a9212534b20e9f9f5bee2a3e5c1d3881d14b665a5f8d3809fba833444a845795` |
| 4 | `theorem` | [actualXiComplexLaplaceKernel_norm_le](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/declarations/actualxicomplexlaplacekernel-norm-le--f5e23b0ca0b54fcf0ef92339.md) | 41 | `result-track:f5e23b0ca0b54fcf0ef9233930c103acece0930405e816c3f79eb247335e3ad6` |
| 5 | `theorem` | [actualXiComplexLaplace_integrableOn](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/declarations/actualxicomplexlaplace-integrableon--f52dce89000f039208fcc19d.md) | 56 | `result-track:f52dce89000f039208fcc19d9eeb3e9219d08b797b64703a82fcb8c66adcc1ba` |
| 6 | `theorem` | [actualXiComplexLaplace_norm_le](../../../../../Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean/declarations/actualxicomplexlaplace-norm-le--c31909c0cd29d1c1f89ed163.md) | 72 | `result-track:c31909c0cd29d1c1f89ed1631b6d5e9180ec11c117e854f68dac70dda77a5cd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de67faf856a79d8a4638b8bd570bb1ee69a1b410ed33451c0cc78eaae6887db6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean","GRWTSK/_verification/specifications/Analysis/RootActualXiComplexLaplaceBudget/Variant132ce08730ce894216e2e2fe88f088081e47b8828727927505166ff1938dc0bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
