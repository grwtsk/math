# Verification target: Nevanlinna Kernel Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e43a37500c43f579bfcf60bcf731d730705664",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e43a37500c43f579bfcf60bcf731d730705664`.

Source path: `GRWTSK/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperHalfPlane](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/upperhalfplane.md) | 37 | `declaration-track:3e8e947181bd52990a8f060316434195165b64e55b64320e75a7c7d50b060f59` |
| 2 | `def` | [IsHerglotz](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/isherglotz.md) | 41 | `declaration-track:3c111a427f3b2e0601fc999ff26d917408d8a55fade5e8c7a5d1932ed1954e54` |
| 3 | `def` | [nevanlinnaKernel](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/nevanlinnakernel.md) | 47 | `declaration-track:c6afc2e40dc281615ef104ec017b2e08edf2064161b68a1238b59fea8f550e77` |
| 4 | `def` | [kernelQuadraticForm](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/kernelquadraticform.md) | 52 | `declaration-track:d1fc19e4cf8c2c5292ba4c09ad82592a4e9f4757282aecc607078c4f272b1be0` |
| 5 | `def` | [PositiveSemidefiniteKernelOn](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/positivesemidefinitekernelon.md) | 60 | `declaration-track:4bce33dcf268f7f63cd46ff0267f5fab6b64430ab416ad1a05cf365cceecb58d` |
| 6 | `def` | [HasPositiveNevanlinnaKernel](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/haspositivenevanlinnakernel.md) | 69 | `declaration-track:1e760307c85642f90933f04399da0417af0291e3847fc2251e6d58cf18612b4e` |
| 7 | `theorem` | [nevanlinnaKernel_self](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/nevanlinnakernel-self.md) | 75 | `result-track:437e391698482b578246513bc093d1f9f2983a8e6783d7a2e6dda33f5cf328cb` |
| 8 | `theorem` | [isHerglotz_of_positiveKernel](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/isherglotz-of-positivekernel.md) | 94 | `result-track:cb4ea5cec344c93d0e2ac65baa94e9bc19000ef688a94561e2460924b0c7a9d2` |
| 9 | `def` | [HerglotzImpliesPositiveNevanlinnaKernel](../../../../RealFunctions/NevanlinnaKernelNamespacedPublic.lean/declarations/herglotzimpliespositivenevanlinnakernel.md) | 117 | `declaration-track:eade26bc9e4b39f6cc47963edb9398ce974bbfb49d3802442c80111c1489d1af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6116b104575dab0e3aa508036212d58e1397ea317cb7855c1834025f30a8de5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean","GRWTSK/_verification/specifications/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
