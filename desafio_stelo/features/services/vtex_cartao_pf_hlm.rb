class Vtex_cartao_pf_hlm
	include HTTParty
	default_options.update(verify: false)
	base_uri "https://apih1.hml.stelo.com.br"

	def nova_compra(request_body)
		self.class.post("/ec/V2/subacquirer/payments/pvt/payments",
			:body => request_body.to_json,
			:headers => {
				'X-VTEX-API-AppKey' => 'ec5ec4a06301e0e342e45a4cbdc5ed35',
				'X-VTEX-API-AppToken' => '2c0f919fc0ed02cec1290e2f9fe107ff',
				'Content-Type' => 'application/json'}
		)

	end
end