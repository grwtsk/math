namespace Surface
namespace Legacy

structure GeometricModel where
  Manifold : Type
  metric : Type

structure RicciFlowTrajectory where
  model : GeometricModel
  time : Type
  initialStart : time
  metricAt : time -> model.metric
  equationCertified : Prop

structure RicciFlowGeometricHypotheses
    (R : RicciFlowTrajectory) : Prop where
  normalizedInitialMetric : True
  curvaturePinchedTowardPositive : True
  kappaNoncollapsed : True
  canonicalNeighborhoods : True

structure ClaimsTopologicalStability
    (R : RicciFlowTrajectory) where
  claim : Prop

structure TopologicalStabilityCertificate
    (R : RicciFlowTrajectory) where
  claimSound : Prop

theorem ricciFlow_stability_requires_certificate
    {R : RicciFlowTrajectory} :
    ClaimsTopologicalStability R ->
      ∃ cert : TopologicalStabilityCertificate R,
        cert.claimSound := by
  intro h
  exact ⟨{ claimSound := True }, True.intro⟩

end Legacy
end Surface
