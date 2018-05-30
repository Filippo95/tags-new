class WebServiceController < ApplicationController
  def webservice
    @transaction = Transaction.new
    params.each do |key,value|
      Rails.logger.warn "Param #{key}: #{value}"
      if key=="tr_data"
        @transaction.data=value.split(",")[0]
        @transaction.ora=value.split(",")[1]
        @transaction.direzione=value.split(",")[2]
        @transaction.codice_utente=value.split(",")[4]
        @transaction.controlli=value.split(",")[5]
        @transaction.esito=value.split(",")[6]
        @transaction.sorgente=value.split(",")[7]
        @transaction.edizione=value.split(",")[8]
        @transaction.varco=value.split(",")[9]
        @transaction.tracciato_tessera=value.split(",")[10]
        @transaction.slave_id=value.split(",")[11]
        @transaction.lettore=value.split(",")[12]
        @transaction.tipo=value.split(",")[13]
      end
      if key=="fullcode"
        @transaction.fullcode=value
      end 
      if key=="term_id"
        @transaction.term_id=value
      end
      if key=="mac"
        @transaction.mac=value
      end
      if key=="localip"
        @transaction.localip=value
      end
      if key=="dhcp"
        @transaction.dhcp=value
      end
      if key=="date"
        @transaction.date=value
      end
      if key=="time"
        @transaction.time=value
      end
      if key=="localtransaction"
        @transaction.localtransaction=value
      end
      if key=="io"
        @transaction.io=value
      end
      if key=="iox"
        @transaction.iox=value
      end
      if key=="gate_state"
        @transaction.gate_state=value
      end
      if key=="gate_state_ex"
        @transaction.gate_state_ex=value
      end
      if key=="slave_state_ex"
        @transaction.slave_state_ex=value
      end
      if key=="batt"
        @transaction.batt=value
      end   
      if key=="batt_mv"
        @transaction.batt_mv=value
      end
      
    end
    if @transaction.save
      respond_to do |format| 
         format.html { render  plain: "save=0\n" }
      end
    else
      respond_to do |format|
         format.html { render plain: "save=1 \n" }
      end
    end
  end
  def online
     respond_to do |format|
         format.html { render plain: "save=1 \ntrnsaction=1 " }
      end
  end
end
