import { Controller, Get, Request } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {

  }

  @Get()
  getHello(@Request() req: any) {
    return {
      message: this.appService.getHello(),
      ip: req.ip,
    }
  }

  @Get('/ping')
  ping(@Request() req: any) {
    return {
      message: 'Ping',
      ip: req.ip,
    }
  }
}
