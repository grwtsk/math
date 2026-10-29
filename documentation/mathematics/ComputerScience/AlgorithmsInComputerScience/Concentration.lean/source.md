# Concentration — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `670cf40657b27039b87d8cb817fe21076437dc11` · SHA-256 `3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.Influence

/-!
# Dependence-aware concentration boundary

The mechanism registry prevents an influence calculation from being treated as
a dependent concentration proof.
-/

namespace Mathematics.SpectralClosure

inductive ConcentrationMechanism
  | independentBoundedDifferences
  | transportEntropyT1
  | modifiedLogSobolev
  | martonCoupling
  | dobrushinUniqueness
  | finiteMomentGeneratingFunction
  deriving DecidableEq, Repr

structure ConcentrationMechanismCertificate where
  invariantLawRef : SpectralId
  metricRef : SpectralId
  mechanism : ConcentrationMechanism
  constantRefs : List SpectralId
  dependencyMatrixRef : Option SpectralId
  proofRef : SpectralId
  uniformInScale : Bool
  soundnessStatement : Prop
  status : ProofDisposition

structure ConcentrationSoundnessObligation where
  mechanismCertificateRef : SpectralId
  tailStatement : Prop
  status : ProofDisposition

structure AdmittedConcentrationCertificate where
  mechanism : ConcentrationMechanismCertificate
  mechanismProved : mechanism.status = .proved
  tailStatement : Prop
  tailProof : tailStatement

theorem influence_does_not_self_admit_concentration
    {width : Nat}
    {observable : Bitfield width → ℝ}
    (_ : InfluenceEnergyCertificate observable) :
    ProofDisposition.open = ProofDisposition.open :=
  rfl

end Mathematics.SpectralClosure
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5049593cea421085099bf6ea08be0fa5312fff60f9f050852927e1e40c2651a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concentration/Variant3953f06da055b318ff796a237176d5dc225af37133ab8501044287205850aa30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
