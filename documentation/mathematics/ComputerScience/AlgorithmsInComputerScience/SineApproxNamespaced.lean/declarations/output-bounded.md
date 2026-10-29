# output_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5f6bb89-9e44-a92c-5f1e-f2836bbba9ab",
  "kind": "theorem",
  "lexical_name": "output_bounded",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "output-bounded",
  "source": {
    "blob": "90435f385533bad4455667210ec02eabc1b691d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineApprox/Variant826a1f70227f4968f919489f68fac9b88aad690068f7e944bd5fb2bf812fb9b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92a13570b8920c3cc75552103519b1bc3c1a5304be878092b77263632eedbe02",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SineApproxNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5f6bb89-9e44-a92c-5f1e-f2836bbba9ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem output_bounded {x : ℝ} (hx : 0 ≤ x ∧ x ≤ (355 : ℝ) / 113) :
    ∀ i, (hi : i < min sineNet.layer2.outputDim sineNet.layer2.bias.length) →
      (TwoLayerNet.forwardReal sineNet [x])[i]'(by
        simp [TwoLayerNet.forwardReal, Layer.forwardReal_length]; omega) ∈
      sineNetOutputBounds[i]'(by
        simp [sineNetOutputBounds, TwoLayerNet.forwardInterval, Layer.forwardInterval_length]; omega) := by
  have hwf := sineNet_wf
  have hdim : sineNet.layer1.inputDim = sineNetInputDomain.length := by
    simp [sineNet, sineNetLayer1, sineNetLayer1Weights, Layer.inputDim, sineNetInputDomain]
  have hxlen : [x].length = sineNetInputDomain.length := by simp [sineNetInputDomain]
  have hmem : ∀ i, (hi : i < sineNetInputDomain.length) →
      [x][i]'(by omega) ∈ sineNetInputDomain[i]'hi := by
    intro i hi
    simp only [sineNetInputDomain, List.length_cons, List.length_nil] at hi
    match i with
    | 0 =>
      simp only [sineNetInputDomain, List.getElem_cons_zero]
      apply mem_mkInterval (by norm_num) _ (-53)
      constructor
      · simp only [Rat.cast_zero]; exact hx.1
      · simp only [Rat.cast_div, Rat.cast_ofNat]; exact hx.2
    | n + 1 => omega
  intro i hi
  have h := TwoLayerNet.mem_forwardInterval hwf hdim hxlen hmem (-53) (by norm_num) i hi
  simp only [sineNetOutputBounds]
  exact h

/-!
## What This Proves

The theorem `output_bounded` establishes:

> **For every real number x with 0 ≤ x ≤ π:**
> The neural network output is contained in the computed interval bounds.

This is verified by Lean's proof checker - a mathematical certainty, not empirical testing.

### Applications

- **Safety certification**: Prove controller outputs stay in safe range
- **Adversarial robustness**: Bound how much outputs can change
- **Regulatory compliance**: Provide formal guarantees for ML systems
-/

end LeanCert.Examples.ML.SineApprox
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SineApproxNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineApprox/Variant826a1f70227f4968f919489f68fac9b88aad690068f7e944bd5fb2bf812fb9b2.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90435f385533bad4455667210ec02eabc1b691d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0ffa4b031fc48b60dc49441d1a0a16f9471ac68cd0350c46e0d913d22a028d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SineApprox/Variant826a1f70227f4968f919489f68fac9b88aad690068f7e944bd5fb2bf812fb9b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
